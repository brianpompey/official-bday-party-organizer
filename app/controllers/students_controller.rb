class StudentsController < ApplicationController

  # GET: /students
  get "/students" do
    if logged_in?
      @students = current_user.students
      erb :'students/my_students'
    else
      redirect to '/login'
    end
  end

  # GET: /students/new
  get "/students/new" do
    if logged_in?
      erb :'students/new'
    else
      redirect to '/login'
    end
  end

  # POST: /students
  post "/students" do
    if logged_in?
      if params[:student_name] == "" || params[:student_birthday] == ""
        flash[:error] = "Invalid input, please try again"
        redirect to '/students/new'
      else
        @student = Student.new(:student_name => params[:student_name], :student_birthday => params[:student_birthday], :teacher_id => current_user.id)
        @student.save
        redirect to '/students'
      end
    else
      redirect to '/login'
    end
  end

  # GET: /students/5/edit
  get "/students/:id/edit" do
    if logged_in?
      @student = Student.find_by_id(params[:id])
      if @student && @student.teacher == current_user
        erb :'students/edit_students'
      else
        erb :'/my_students'
      end
    else
      redirect to '/login'
    end
  end

  # PATCH: /students/5
  patch "/students/:id" do
    @student = Student.find_by_id(params[:id])
    if logged_in?
      if params[:student_name] == "" || params[:student_birthday] == ""
        flash[:error] = "Invalid input, please try again"
        redirect to "/students/#{@student.id}/edit"
      else

        if @student && @student.teacher == current_user
          if @student.update(student_name: params[:student_name], student_birthday: params[:student_birthday])
            redirect to "/students"
          else
            redirect to "/students/#{@student.id}/edit"
          end
        else
          redirect to '/students'
        end
      end
    else
      redirect to '/login'
    end
  end

  # DELETE: /students/5/delete
  delete "/students/:id/delete" do
    @student = Student.find_by_id(params[:id])
#    if logged_in?
    if @student && @student.teacher == current_user
      @student.delete
  #    redirect to '/students'
    end
    redirect to '/students'
#    else
#      redirect to '/login'
#    end
  end

end

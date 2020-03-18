class PartiesController < ApplicationController

  # GET: /parties
  get "/parties" do
    @parties = Party.all
    erb :"/parties/parties"
  end

  # GET: /parties/new
  get "/parties/new" do
    if logged_in?
      erb :'parties/new'
    else
      redirect to '/login'
    end
  end

  # POST: /parties
  post "/parties" do
    if logged_in?
      if params[:venue] == ""
        redirect to '/students/new'
      else
#        @student = @teacher.students.new(:student_name => params[:student_name], :student_birthday => params[:student_birthday])
        @party = Party.new(:venue => params[:venue], :student_id => current_user.student.id, :teacher_id => current_user.id)
        @party.save
        redirect to '/parties'
      end
    else
      redirect to '/login'
    end
  end

  # GET: /parties/5/edit
  get "/parties/:id/edit" do
    if logged_in?
      @party = Party.find_by_id(params[:id])
      if @party && @party.student == current_user.student
        erb :'parties/edit_parties'
      else
        erb :'/parties'
      end
    else
      redirect to '/login'
    end
  end

  # PATCH: /parties/5
  patch "/parties/:id" do
    redirect "/parties/:id"
  end

  # DELETE: /parties/5/delete
  delete "/parties/:id/delete" do
    @party = Party.find_by_id(params[:id])
    if @party && @party.student == current_user.student
      @party.delete
    end
    redirect to '/parties'
  end
end

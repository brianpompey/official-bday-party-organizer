class PartiesController < ApplicationController

  # GET: /parties
  get "/parties" do
    @parties = Party.all
    @student = Student.find_by_id(params[:id])
    erb :"/parties/parties"
  end

  # GET: /parties/new
  get "/students/:id/parties/new" do
    @student = Student.find_by_id(params[:id])
    if logged_in?
      erb :'parties/new'
    else
      redirect to '/login'
    end
  end

  # POST: /parties
  post "/students/:id/parties" do
    @student = Student.find_by_id(params[:id])
    if logged_in?
      @party = Party.new(:venue => params[:venue], :student_id => @student.student_id, :student_name => @student.student_name, :teacher_id => current_user.id)
      binding.pry
      @party.save
      redirect to '/parties'
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

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
    if logged_in?
      @party = Party.new(:venue => params[:venue], :student_name => params[:student_name], :party_date => params[:party_date], :teacher_id => current_user.id)
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
      if @party
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
    @party = Party.find_by_id(params[:id])
    if logged_in?
      if params[:student_name] == ""
        flash[:error] = "Invalid input, please try again"
        redirect to "/parties/#{@party.id}/edit"
      else
        if @party.update(venue: params[:venue])
          redirect to "/parties"
        else
          redirect to "/parties"
        end
        redirect to "/parties"
      end
    else
      redirect to '/login'
    end
  end

  # DELETE: /parties/5/delete
  delete "/parties/:id/delete" do
    @party = Party.find_by_id(params[:id])
    @party.delete
    redirect to '/parties'
  end
end

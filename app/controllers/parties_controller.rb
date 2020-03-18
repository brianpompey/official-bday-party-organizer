class PartiesController < ApplicationController

  # GET: /parties
  get "/parties" do
    erb :"/parties/index.html"
  end

  # GET: /parties/new
  get "/parties/new" do
    erb :"/parties/new.html"
  end

  # POST: /parties
  post "/parties" do
    redirect "/parties"
  end

  # GET: /parties/5
  get "/parties/:id" do
    erb :"/parties/show.html"
  end

  # GET: /parties/5/edit
  get "/parties/:id/edit" do
    erb :"/parties/edit.html"
  end

  # PATCH: /parties/5
  patch "/parties/:id" do
    redirect "/parties/:id"
  end

  # DELETE: /parties/5/delete
  delete "/parties/:id/delete" do
    redirect "/parties"
  end
end

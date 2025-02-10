class ResourcesController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to resource_path(
      first_name: params[:first_name],
      last_name: params[:last_name]
    ), notice: "Form submitted successfully."
  end

  def show
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end
end

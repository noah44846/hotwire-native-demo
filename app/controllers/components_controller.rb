class ComponentsController < ApplicationController
  def index
  end

  def create
    redirect_to component_path(
      first_name: params[:first_name],
      last_name: params[:last_name]
    )
  end

  def show
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end

  def form
  end

  def menu
  end

  def overflow
  end
end

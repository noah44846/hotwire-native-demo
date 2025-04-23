class BugsController < ApplicationController
  def index
  end

  def tabs
    @tab = params[:tab] || "first"
  end
end

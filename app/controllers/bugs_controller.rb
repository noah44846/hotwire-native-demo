class BugsController < ApplicationController
  def index
  end

  def tabs
    @tab = params[:tab] || "first"
  end

  def dynamic_tabs
    @tab = params[:tab] || "first"
  end

  def bottom_sheet
  end
  
  def refresh
    refresh_or_redirect_back_or_to dynamic_tabs_bugs_path
  end
end

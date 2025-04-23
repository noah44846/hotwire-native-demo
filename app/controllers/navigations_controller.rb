class NavigationsController < ApplicationController
  def show
  end

  def redirect
    redirect_to redirected_navigation_path
  end

  def redirected
  end

  def replace
  end

  def slow
    sleep 1.5
  end

  def second
  end
end

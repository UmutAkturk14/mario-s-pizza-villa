class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :about, :services]

  def about
  end

  def contact
  end

  def home
  end

  def services
  end

  def menu
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :about, :services, :menu]

  def about
  end

  def contact
  end

  def home
  end

  def services
  end

  def menu
    @menu = Item.all
  end
end

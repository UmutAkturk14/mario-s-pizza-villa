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
    begin
      @menu = Item.all
    rescue StandardError => e
      flash[:error] = "An error occurred while fetching the menu items: #{e.message}"
      @menu = [] # Set @menu to an empty array or handle the error as needed
    end
  end
end

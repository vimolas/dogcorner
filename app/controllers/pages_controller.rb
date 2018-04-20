class PagesController < ApplicationController
   skip_before_action :authenticate_user!

  def home
    @dogs = Dog.all
  end
end

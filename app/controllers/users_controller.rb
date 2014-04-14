class UsersController < ApplicationController
  def new
  	@userpic = UserPic.new
  end


  def index
    @userpic = UserPic.all
  end


  def view

  end
end

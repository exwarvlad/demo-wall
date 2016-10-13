class UsersController < ApplicationController

  def index

    unless current_user.present?
      redirect_to '/users/sign_in'
    else
      redirect_to '/articles'
    end
  end
end

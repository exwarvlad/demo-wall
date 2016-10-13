class UsersController < ApplicationController

  before_action :load_user, except: [:index, :create, :new]

  def index

    unless current_user.present?
      redirect_to '/users/sign_in'
    else
      redirect_to '/articles'
    end
  end
end

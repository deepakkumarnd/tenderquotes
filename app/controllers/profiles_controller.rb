class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
  end

  private

  def profile_params
    params.require('profile').permit(:name, :email, :password, :password_confirmation, :avatar)
  end
end
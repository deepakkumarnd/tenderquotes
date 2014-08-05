class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update_attributes(profile_params)
    redirect_to profile_path, notice: 'Profile updated successfully'
  end

  private

  def profile_params
    params.require('user').permit(:name, :avatar)
  end
end
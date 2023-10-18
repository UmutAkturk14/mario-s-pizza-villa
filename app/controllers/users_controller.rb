class UsersController < ApplicationController
  def edit
    set_user
    authorize @user
  end

  def update
    set_user
    authorize @user

    if @user.update(user_params)
      redirect_to edit_user_path(@user), notice: "🎉 Your profile has been successfully updated."
    else
      render :edit
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :phone_number)
  end
end

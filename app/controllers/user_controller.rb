class UserController < ApplicationController
  def update
    @user = User.find(params[:id])
    authorize @user

    if @user.update(user_params)
      redirect_to menu_path, notice: "Your profile has been updated successfully."
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address, :phone_number)
  end
end

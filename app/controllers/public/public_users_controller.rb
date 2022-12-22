class Public::PublicUsersController < ApplicationController
  def show
    @public_user = current_public_user
  end

  def edit
    @public_user = current_public_user
  end

  def update
    public_user = current_public_user
    public_user.update(public_user_params)
    redirect_to public_my_page_path
  end

  def unsubscribe
  end

  private

  def public_user_params
    params.require(:public_user).permit(:profile_image, :last_name, :first_name, :last_name_kana, :first_name_kana, :nickname, :introduction, :email)
  end
end

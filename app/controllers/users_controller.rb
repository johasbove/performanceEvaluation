class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all.as_json(include:
              { family_goal: {only: [:id, :family_name]} },
              only: [:id, :name])
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id]).as_json(include:
              { family_goal:
                {only: [:id, :area, :world, :position, :family_name]}
              }, only: [:id, :name])
    render json: @user, status: :ok
  end

  def create
    # OJO NO debe ser sensible a mayúsculas ni a espacios)
    @user = User.create_with_family_association user_params
    render json: @user, status: :ok
  rescue ActiveRecord::RecordNotFound => e
    render json: {
      error: e.to_s
    }, status: :not_found
  end

  private

  def user_params
    params.require(:user).permit(:name, :area, :world, :position)
  end
end

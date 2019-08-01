class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [:show, :update]
  
  def create
    if User.create!(user_params)
      render :show, status: :created
    else
      render_error
    end
  end

  def show
    render json: @user
    # if @user == current_user
    #   render json: @user
    # else
    #   render json: { message: "permission denied" }
    # end
  end

  def update
    if @user.update!(user_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:email, :password, :name, :description, :is_shifu)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end
end
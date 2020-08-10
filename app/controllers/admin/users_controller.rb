class UsersController < StaffsController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :load_comments, only: [:show]

  def index
    @users = User.all

    @filter_attributes = %w(id)
    @column_attributes = %w(id)

    @q = @users.ransack(filter_column)

    @users = @q.result.order("id desc")
                      .page(params[:page]).per(30)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to users_path
  end

  def show
    @comment = ActiveAdmin::Comment.new
  end

  def edit
  end

  def update
    redirect_to users_path
  end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  private
    def set_user
      @user = User.find params[:id]
    end

    def user_params
      params.require(:user).permit(:name, :phone, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :profile_img, :google_token, :google_refresh_token, :comments_count)
    end

    def filter_column
      return {} if params[:q].nil?
      params[:q]
    end

    def load_comments
      set_user
      @comments = ActiveAdmin::Comment.where(resource_type: "User", resource_id: @user.id).order("id asc")
    end
end
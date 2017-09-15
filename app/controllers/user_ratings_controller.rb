class UserRatingsController < ApplicationController
  helper_method :user_rating_params
  before_action :set_user_rating, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @user_ratings = UserRating.all
  end


  def show
  end

  def new
    @user_rating = UserRating.new
    @user_rating.user_id = current_user.id
    @user_rating.item_id = params[:item_id]
  end

  def edit
  end

  def create
    @item = Item.find params[:user_rating][:item_id]

    @user_rating = UserRating.find_by(user_id: current_user.id, item_id: @item.id)
    if @user_rating
      flash[:alert] = "Sorry, you have already rated this item!"
      @user_rating.score = params[:user_rating][:score]

    else
      @user_rating = UserRating.new(user_rating_params)
      @user_rating.user_id = current_user.id
    end

    if @user_rating.save
      redirect_to @user_rating.item
    else
      render 'new'
    end
  end

  def update
    @user_rating.update(user_rating_params)

    respond_to do |format|
      if @user_rating.update(user_rating_params)
        format.html { redirect_to @user_rating, notice: 'User rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_rating }
      else
        format.html { render :edit }
        format.json { render json: @user_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_rating.destroy
    redirect_to root_path

    # respond_to do |format|
    #   format.html { redirect_to user_ratings_url, notice: 'User rating was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_rating
      @user_rating = UserRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_rating_params
      params.require(:user_rating).permit(:score, :comment, :user_id, :item_id)
    end
end

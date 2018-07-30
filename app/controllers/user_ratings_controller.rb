class UserRatingsController < ApplicationController
  before_action :set_user_rating, only: [:show, :edit, :update, :destroy]
  before_action :set_item
  before_action :authenticate_user!

  def new
    @user_rating = UserRating.new
    @user_rating.user_id = current_user.id
    @user_rating.item_id = params[:item_id]
  end

  def edit
  end

  def create
    @user_rating = UserRating.new(user_rating_params)
    @user_rating.user_id = current_user.id
    @user_rating.item_id = @item.id 
    
    if @user_rating.save
      redirect_to @item
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
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_rating
      @user_rating = UserRating.find(params[:id])
    end
    
    def set_item 
      @item = Item.find(params[:item_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_rating_params
      params.require(:user_rating).permit(:score, :title, :comment, :user_id, :item_id)
    end
end

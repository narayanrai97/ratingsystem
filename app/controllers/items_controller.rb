class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]

  def index
    @items = Item.all
  end

  def show
    @user_ratings = UserRating.where(item_id: @item.id).order("created_at DESC")
    
    if @user_ratings.blank?
      @average_rating = 0
    else
      @average_rating = @user_ratings.average(:score).round(2)
    end
  end

  def new
    @item = current_user.items.build
  end

  def edit
  end

  def create
    @item = current_user.items.build(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def details
    @item = Item.find params[:id]
    @user_ratings = UserRating.where(item_id: @item.id)
  end
  
  ## SEARCH ITEMS
  def search
    search = params[:search]
    @search_items = Item.where("title LIKE ?", "%#{search}%")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :category, :genre, :singer, :record_label, :released_date, :duration, :rating, :casts, :direction, :author, :isbn, :image)
    end
end

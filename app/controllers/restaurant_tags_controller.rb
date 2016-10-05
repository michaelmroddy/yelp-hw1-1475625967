class RestaurantTagsController < ApplicationController
  def index
    @restaurant_tags = RestaurantTag.all
  end

  def show
    @restaurant_tag = RestaurantTag.find(params[:id])
  end

  def new
    @restaurant_tag = RestaurantTag.new
  end

  def create
    @restaurant_tag = RestaurantTag.new
    @restaurant_tag.restaurant_id = params[:restaurant_id]
    @restaurant_tag.tag_id = params[:tag_id]

    if @restaurant_tag.save
      redirect_to "/restaurant_tags", :notice => "Restaurant tag created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant_tag = RestaurantTag.find(params[:id])
  end

  def update
    @restaurant_tag = RestaurantTag.find(params[:id])

    @restaurant_tag.restaurant_id = params[:restaurant_id]
    @restaurant_tag.tag_id = params[:tag_id]

    if @restaurant_tag.save
      redirect_to "/restaurant_tags", :notice => "Restaurant tag updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant_tag = RestaurantTag.find(params[:id])

    @restaurant_tag.destroy

    redirect_to "/restaurant_tags", :notice => "Restaurant tag deleted."
  end
end

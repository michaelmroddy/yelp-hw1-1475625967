class ReviewPhotosController < ApplicationController
  def index
    @review_photos = ReviewPhoto.all
  end

  def show
    @review_photo = ReviewPhoto.find(params[:id])
  end

  def new
    @review_photo = ReviewPhoto.new
  end

  def create
    @review_photo = ReviewPhoto.new
    @review_photo.review_id = params[:review_id]
    @review_photo.photo = params[:photo]

    if @review_photo.save
      redirect_to "/review_photos", :notice => "Review photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review_photo = ReviewPhoto.find(params[:id])
  end

  def update
    @review_photo = ReviewPhoto.find(params[:id])

    @review_photo.review_id = params[:review_id]
    @review_photo.photo = params[:photo]

    if @review_photo.save
      redirect_to "/review_photos", :notice => "Review photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review_photo = ReviewPhoto.find(params[:id])

    @review_photo.destroy

    redirect_to "/review_photos", :notice => "Review photo deleted."
  end
end

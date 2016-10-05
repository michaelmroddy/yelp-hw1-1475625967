class OwnershipsController < ApplicationController
  def index
    @ownerships = Ownership.all
  end

  def show
    @ownership = Ownership.find(params[:id])
  end

  def new
    @ownership = Ownership.new
  end

  def create
    @ownership = Ownership.new
    @ownership.user_id = params[:user_id]
    @ownership.restaurant_id = params[:restaurant_id]

    if @ownership.save
      redirect_to "/ownerships", :notice => "Ownership created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ownership = Ownership.find(params[:id])
  end

  def update
    @ownership = Ownership.find(params[:id])

    @ownership.user_id = params[:user_id]
    @ownership.restaurant_id = params[:restaurant_id]

    if @ownership.save
      redirect_to "/ownerships", :notice => "Ownership updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ownership = Ownership.find(params[:id])

    @ownership.destroy

    redirect_to "/ownerships", :notice => "Ownership deleted."
  end
end

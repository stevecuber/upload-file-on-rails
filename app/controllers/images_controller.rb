class ImagesController < ApplicationController
  def index
    #@car = Car.find(params[:car_id])
    #@images = @car.images.order("order_id")
  end

  def upload_image   
    DataFile.save_file(params[:upload])
    redirect_to images_path(:car_id => params[:car_id])
  end
end
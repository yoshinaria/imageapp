class ImageController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new 
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
  end

  def create
    @image = Image.new(image_params)

    @image.save
    redirect_to action: 'index'
  end

  def update
    @image.update(image_params)
  end

  def destroy
    Image.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  private

    def image_params
      params.require(:image).permit(:name, :desc, :tags)
    end
end

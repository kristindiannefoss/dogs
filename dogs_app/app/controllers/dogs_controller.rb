class DogsController < ApplicationController
    def new
      @dog = Dog.new
    end

    def index
      @dogs = Dog.all
    end

    def create
      @dog = Dog.create(dog_params)

      redirect_to dog_path(@dog)
    end

    def update

    end

    def show
      @dog = Dog.find(params[:id])
    end
    # def edit
    #
    # end
    #
    # def destroy
    #
    # end
  private

  def dog_params
    params.require(:dog).permit(:name, :color)
  end
end

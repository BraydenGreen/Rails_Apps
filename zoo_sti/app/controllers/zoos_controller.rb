class ZoosController < ApplicationController

before_action :zoo, only: [:show, :edit, :update, :destroy]

  def index
    @zoos = Zoo.all
  end

  def new
    @zoo = Zoo.new
  end

  def create
    @zoo = Zoo.new(zoo_params)
    if @zoo.save
      #show flash message
    redirect_to zoos_path
    else
      # use @zoo.messagers to show error message
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @zoo.update(zoo_params)
      # show flash message
      redirect_to zoos_path
    else
      # show error message
      render 'edit'
    end
  end

  def destroy
    @zoo.destroy
    # show flash message
    redirect_to zoos_path
  end

  private

    def zoo
      @zoo = Zoo.find(params[:id])
    end

    def zoo_params
      params.require(:zoo).permit(:name)  
    end

end

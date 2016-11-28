class Api::V1::RappersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :rapper, except: [:index, :create]

  def index
    render json: { rappers: Rapper.all }
  end

  def create
    rapper = Rapper.new(rapper_params)
    if rapper.save
      render json: { rapper: rapper }
    else
      render json: { message: rapper.errors.full_messages }, status: 500
    end
  end

  def update
    if @rapper.update(rapper_params)
      render json: { rapper: @rapper }
    else
      render json: { message: @rapper.errors.full_messages }, status: 500
    end
  end

  def show
    render json: { rapper: @rapper }
  end

  def destroy
    message = "YOU BUSTED A CAP IN: #{@rapper.name}! HE DID NOT SURVIVE!"
    @rapper.destroy
    render json: { message: message }
  end

  private
    def rapper_params
      params.require(:rapper).permit(:name, :street_cred, :home_town, :net_worth, :teardrops, :number_of_guns, :og, :been_to_jail)
    end

    def rapper
      @rapper = Rapper.find_by(id: params[:id])
      unless @rapper
        render json: { message: "Rapper not found with id: #{params[:id]}"}, status: 404
      end
    end
end

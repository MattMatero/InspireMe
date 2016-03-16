class LocationsController < ApplicationController



  def new
    
  end

  def show
    @location = Location.new
    randomGen = Random.new
    @location.lat = randomGen.rand(-200..200)
    @location.lng = randomGen.rand(-200..200)

    respond_to do |format|
      format.json {render json: @location, notice: "Loading new Loc..."}
    end
  end

  def create
    p params
    locParams = params[:location]
    @location = Location.new
    @location.lat = locParams[:lat].to_i 
    @location.lng = locParams[:lng].to_i
    @location.userId = current_user.id
    
    respond_to do |format|
      if @location.save
        format.json {render json: @location}
      else
        format.json {render json: @location.errors, status: :unprocessable_entity}
      end
    end
  end


  def location_params
    params.require(:location).permit(:lat,:lng)
  end

end

class RoutesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_route, only: %i[ show edit update destroy ]

  
  # GET /routes or /routes.json
  def index
    @routes = Route.all
  end

  # GET /routes/1 or /routes/1.json
  def show
  end

  # GET /routes/new
  def new
  
    @route = Route.new
    @route.drivers.new   
    @route.vehicles.new
    @route.organizations.new
    @driver = Driver.pluck :name, :id 
    @vehicle = Vehicle.pluck :plate, :id 
    @organization = Organization.pluck :name, :id 

    
  end

  # GET /routes/1/edit()
  def edit
    
  end

  # POST /routes or /routes.json
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to route_url(@route), notice: "Route was successfully created." }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1 or /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to route_url(@route), notice: "Route was successfully updated." }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1 or /routes/1.json
  def destroy
    @route.destroy

    respond_to do |format|
      format.html { redirect_to routes_url, notice: "Route was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def route_params
      params.require(:route).permit(:start_at, :ends_at, :travel_time, :total_stops, :status, :vehicle_id, :driver_id , drivers_attributes: [:name], vehicles_attributes: [:plate], organizations_attributes: [:name])
    end
end

class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html, :json

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = current_user.bookings.build
    @timeslots = Timeslot.all
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @timeslots = Timeslot.all
    @booking = current_user.bookings.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def getAvailableTimeslots
    @allTimeSlots = Timeslot.where(weekday: params[:weekday])
    @existingBookings = Booking.where(sport_id: params[:sport_id], facility_id: params[:facility_id], date: params[:date]).order('timeslot_id')
    availableTimeSlots = []
    if @existingBookings.size == 0
      @allTimeSlots.each do |singleTimeSlot|
        myObj = {"code" => singleTimeSlot.code, "start_time" => singleTimeSlot.start_time.strftime("%H:%M"), "end_time" => singleTimeSlot.end_time.strftime("%H:%M"), "status" => "Available", "timeslot_id" => singleTimeSlot.id}
        availableTimeSlots.push(myObj)
      end
    else
      i = 0
      @allTimeSlots.each do |singleTimeSlot|
        if singleTimeSlot.id == @existingBookings[i].timeslot_id
          myObj = {"code" => singleTimeSlot.code, "start_time" => singleTimeSlot.start_time.strftime("%H:%M"), "end_time" => singleTimeSlot.end_time.strftime("%H:%M"), "status" => "Booked", "timeslot_id" => singleTimeSlot.id}
          availableTimeSlots.push(myObj)
          i = i + 1
          if i == @existingBookings.length()
            i = i - 1
          end
        else
          myObj = {"code" => singleTimeSlot.code, "start_time" => singleTimeSlot.start_time.strftime("%H:%M"), "end_time" => singleTimeSlot.end_time.strftime("%H:%M"), "status" => "Available", "timeslot_id" => singleTimeSlot.id}
          availableTimeSlots.push(myObj)
        end
      end
    end
    respond_to do |format|
      format.json { render json: availableTimeSlots }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:date, :status, :sport_id, :facility_id, :user_id, :timeslot_id)
    end
end

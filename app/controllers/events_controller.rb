class EventsController < ApplicationController
  before_action :set_event, only: [:rate, :unlike, :like, :show, :edit, :update, :destroy]

  def rate
    @event.vote_by :voter => current_user, :vote_weight => params[:stars], :scope => 'rating'
    redirect_to :back
  end

  def like
    @event.liked_by current_user
    redirect_to :back
  end

  def unlike
    @event.unliked_by current_user
    redirect_to :back
  end

  # GET /events
  # GET /events.json
  def index
    if params[:tag]
      @events = Event.tagged_with(params[:tag])
    else
      @events = Event.all
    end
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @stars = 1..5
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:tag_list, :name, :description, :date, :start_time, :end_time, :street, :suburb, :state, :postcode, :country, :group_ids => [])
    end
end

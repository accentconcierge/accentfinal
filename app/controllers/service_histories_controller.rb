class ServiceHistoriesController < ApplicationController

  before_action :set_service_history, only: [:show, :edit, :update, :destroy]

  # GET /service_histories
  # GET /service_histories.json
  def index
    @service_histories = ServiceHistory.all
  end

  # GET /service_histories/1
  # GET /service_histories/1.json
  def show
  end

  # GET /service_histories/new
  def new
    @service_history = ServiceHistory.new
  end

  # GET /service_histories/1/edit
  def edit
  end

  # POST /service_histories
  # POST /service_histories.json
  def create
    @service_history = ServiceHistory.new(service_history_params)

    respond_to do |format|
      if @service_history.save
        format.html { redirect_to @service_history, notice: 'Service history was successfully created.' }
        format.json { render :show, status: :created, location: @service_history }
      else
        format.html { render :new }
        format.json { render json: @service_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_histories/1
  # PATCH/PUT /service_histories/1.json
  def update
    respond_to do |format|
      if @service_history.update(service_history_params)
        format.html { redirect_to @service_history, notice: 'Service history was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_history }
      else
        format.html { render :edit }
        format.json { render json: @service_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_histories/1
  # DELETE /service_histories/1.json
  def destroy
    @service_history.destroy
    respond_to do |format|
      format.html { redirect_to service_histories_url, notice: 'Service history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_history
      @service_history = ServiceHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_history_params
      params.require(:service_history).permit(:user, :service, :charge, :feedback)
    end
end

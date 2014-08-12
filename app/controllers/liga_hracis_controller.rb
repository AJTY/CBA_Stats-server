class LigaHracisController < ApplicationController
  before_action :set_liga_hraci, only: [:show, :edit, :update, :destroy]

  # GET /liga_hracis
  # GET /liga_hracis.json
  def index
    @liga_hracis = LigaHraci.all
  end

  # GET /liga_hracis/1
  # GET /liga_hracis/1.json
  def show
  end

  # GET /liga_hracis/new
  def new
    @liga_hraci = LigaHraci.new
  end

  # GET /liga_hracis/1/edit
  def edit
  end

  # POST /liga_hracis
  # POST /liga_hracis.json
  def create
    @liga_hraci = LigaHraci.new(liga_hraci_params)

    respond_to do |format|
      if @liga_hraci.save
        format.html { redirect_to @liga_hraci, notice: 'Liga hraci was successfully created.' }
        format.json { render :show, status: :created, location: @liga_hraci }
      else
        format.html { render :new }
        format.json { render json: @liga_hraci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liga_hracis/1
  # PATCH/PUT /liga_hracis/1.json
  def update
    respond_to do |format|
      if @liga_hraci.update(liga_hraci_params)
        format.html { redirect_to @liga_hraci, notice: 'Liga hraci was successfully updated.' }
        format.json { render :show, status: :ok, location: @liga_hraci }
      else
        format.html { render :edit }
        format.json { render json: @liga_hraci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_hracis/1
  # DELETE /liga_hracis/1.json
  def destroy
    @liga_hraci.destroy
    respond_to do |format|
      format.html { redirect_to liga_hracis_url, notice: 'Liga hraci was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liga_hraci
      @liga_hraci = LigaHraci.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liga_hraci_params
      params[:liga_hraci]
    end
end

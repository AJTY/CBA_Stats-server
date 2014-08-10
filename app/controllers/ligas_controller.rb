class LigasController < ApplicationController
  before_action :set_liga, only: [:show, :edit, :update, :destroy]

  # GET /ligas
  # GET /ligas.json
  def index
    @ligas = Liga.all
  end

  # GET /ligas/1
  # GET /ligas/1.json
  def show
  end

  # GET /ligas/new
  def new
    @liga = Liga.new
  end

  # GET /ligas/1/edit
  def edit
  end

  # POST /ligas
  # POST /ligas.json
  def create
    @liga = Liga.new(liga_params)

    respond_to do |format|
      if @liga.save
        format.html { redirect_to @liga, notice: 'Liga was successfully created.' }
        format.json { render :show, status: :created, location: @liga }
      else
        format.html { render :new }
        format.json { render json: @liga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ligas/1
  # PATCH/PUT /ligas/1.json
  def update
    respond_to do |format|
      if @liga.update(liga_params)
        format.html { redirect_to @liga, notice: 'Liga was successfully updated.' }
        format.json { render :show, status: :ok, location: @liga }
      else
        format.html { render :edit }
        format.json { render json: @liga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ligas/1
  # DELETE /ligas/1.json
  def destroy
    @liga.destroy
    respond_to do |format|
      format.html { redirect_to ligas_url, notice: 'Liga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liga
      @liga = Liga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liga_params
      params[:liga]
    end
end

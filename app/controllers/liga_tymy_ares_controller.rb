class LigaTymyAresController < ApplicationController
  before_action :set_liga_tymy_are, only: [:show, :edit, :update, :destroy]

  # GET /liga_tymy_ares
  # GET /liga_tymy_ares.json
  def index
    @liga_tymy_ares = LigaTymyAre.all
  end

  # GET /liga_tymy_ares/1
  # GET /liga_tymy_ares/1.json
  def show
  end

  # GET /liga_tymy_ares/new
  def new
    @liga_tymy_are = LigaTymyAre.new
  end

  # GET /liga_tymy_ares/1/edit
  def edit
  end

  # POST /liga_tymy_ares
  # POST /liga_tymy_ares.json
  def create
    @liga_tymy_are = LigaTymyAre.new(liga_tymy_are_params)

    respond_to do |format|
      if @liga_tymy_are.save
        format.html { redirect_to @liga_tymy_are, notice: 'Liga tymy are was successfully created.' }
        format.json { render :show, status: :created, location: @liga_tymy_are }
      else
        format.html { render :new }
        format.json { render json: @liga_tymy_are.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liga_tymy_ares/1
  # PATCH/PUT /liga_tymy_ares/1.json
  def update
    respond_to do |format|
      if @liga_tymy_are.update(liga_tymy_are_params)
        format.html { redirect_to @liga_tymy_are, notice: 'Liga tymy are was successfully updated.' }
        format.json { render :show, status: :ok, location: @liga_tymy_are }
      else
        format.html { render :edit }
        format.json { render json: @liga_tymy_are.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_tymy_ares/1
  # DELETE /liga_tymy_ares/1.json
  def destroy
    @liga_tymy_are.destroy
    respond_to do |format|
      format.html { redirect_to liga_tymy_ares_url, notice: 'Liga tymy are was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liga_tymy_are
      @liga_tymy_are = LigaTymyAre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liga_tymy_are_params
      params[:liga_tymy_are]
    end
end

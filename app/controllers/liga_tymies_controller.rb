class LigaTymiesController < ApplicationController
  before_action :set_liga_tymy, only: [:show, :edit, :update, :destroy]

  # GET /liga_tymies
  # GET /liga_tymies.json
  def index
    @liga_tymies = LigaTymy.all
  end

  # GET /liga_tymies/1
  # GET /liga_tymies/1.json
  def show
  end

  # GET /liga_tymies/new
  def new
    @liga_tymy = LigaTymy.new
  end

  # GET /liga_tymies/1/edit
  def edit
  end

  # POST /liga_tymies
  # POST /liga_tymies.json
  def create
    @liga_tymy = LigaTymy.new(liga_tymy_params)

    respond_to do |format|
      if @liga_tymy.save
        format.html { redirect_to @liga_tymy, notice: 'Liga tymy was successfully created.' }
        format.json { render :show, status: :created, location: @liga_tymy }
      else
        format.html { render :new }
        format.json { render json: @liga_tymy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liga_tymies/1
  # PATCH/PUT /liga_tymies/1.json
  def update
    respond_to do |format|
      if @liga_tymy.update(liga_tymy_params)
        format.html { redirect_to @liga_tymy, notice: 'Liga tymy was successfully updated.' }
        format.json { render :show, status: :ok, location: @liga_tymy }
      else
        format.html { render :edit }
        format.json { render json: @liga_tymy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liga_tymies/1
  # DELETE /liga_tymies/1.json
  def destroy
    @liga_tymy.destroy
    respond_to do |format|
      format.html { redirect_to liga_tymies_url, notice: 'Liga tymy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liga_tymy
      @liga_tymy = LigaTymy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liga_tymy_params
      params[:liga_tymy]
    end
end

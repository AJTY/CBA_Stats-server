class RepreSoupiskasController < ApplicationController
  before_action :set_repre_soupiska, only: [:show, :edit, :update, :destroy]

  # GET /repre_soupiskas
  # GET /repre_soupiskas.json
  def index
    @repre_soupiskas = RepreSoupiska.all
  end

  # GET /repre_soupiskas/1
  # GET /repre_soupiskas/1.json
  def show
  end

  # GET /repre_soupiskas/new
  def new
    @repre_soupiska = RepreSoupiska.new
  end

  # GET /repre_soupiskas/1/edit
  def edit
  end

  # POST /repre_soupiskas
  # POST /repre_soupiskas.json
  def create
    @repre_soupiska = RepreSoupiska.new(repre_soupiska_params)

    respond_to do |format|
      if @repre_soupiska.save
        format.html { redirect_to @repre_soupiska, notice: 'Repre soupiska was successfully created.' }
        format.json { render :show, status: :created, location: @repre_soupiska }
      else
        format.html { render :new }
        format.json { render json: @repre_soupiska.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repre_soupiskas/1
  # PATCH/PUT /repre_soupiskas/1.json
  def update
    respond_to do |format|
      if @repre_soupiska.update(repre_soupiska_params)
        format.html { redirect_to @repre_soupiska, notice: 'Repre soupiska was successfully updated.' }
        format.json { render :show, status: :ok, location: @repre_soupiska }
      else
        format.html { render :edit }
        format.json { render json: @repre_soupiska.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repre_soupiskas/1
  # DELETE /repre_soupiskas/1.json
  def destroy
    @repre_soupiska.destroy
    respond_to do |format|
      format.html { redirect_to repre_soupiskas_url, notice: 'Repre soupiska was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repre_soupiska
      @repre_soupiska = RepreSoupiska.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repre_soupiska_params
      params[:repre_soupiska]
    end
end

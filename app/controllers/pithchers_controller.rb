class PithchersController < ApplicationController
  before_action :set_pithcher, only: [:show, :edit, :update, :destroy]

  # GET /pithchers
  # GET /pithchers.json
  def index
    @pithchers = Pithcher.all
  end

  # GET /pithchers/1
  # GET /pithchers/1.json
  def show
  end

  # GET /pithchers/new
  def new
    @pithcher = Pithcher.new
  end

  # GET /pithchers/1/edit
  def edit
  end

  # POST /pithchers
  # POST /pithchers.json
  def create
    @pithcher = Pithcher.new(pithcher_params)

    respond_to do |format|
      if @pithcher.save
        format.html { redirect_to @pithcher, notice: 'Pithcher was successfully created.' }
        format.json { render :show, status: :created, location: @pithcher }
      else
        format.html { render :new }
        format.json { render json: @pithcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pithchers/1
  # PATCH/PUT /pithchers/1.json
  def update
    respond_to do |format|
      if @pithcher.update(pithcher_params)
        format.html { redirect_to @pithcher, notice: 'Pithcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @pithcher }
      else
        format.html { render :edit }
        format.json { render json: @pithcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pithchers/1
  # DELETE /pithchers/1.json
  def destroy
    @pithcher.destroy
    respond_to do |format|
      format.html { redirect_to pithchers_url, notice: 'Pithcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pithcher
      @pithcher = Pithcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pithcher_params
      params.require(:pithcher).permit(:exl2014, :exl2013, :exl2012, :exl2011)
    end
end

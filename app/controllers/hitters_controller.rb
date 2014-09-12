class HittersController < ApplicationController
  before_action :set_hitter, only: [:show, :edit, :update, :destroy]

  # GET /hitters
  # GET /hitters.json
  def index
    # @hitters = Hitter.all
    sql = "SELECT liga_xpalka.pid, liga_hraci.jmeno, liga_tymy.zkratka AS tym,
count(liga_xpalka.pid) AS g, sum(ab+bb+hb+sh) AS pab, sum(ab) AS ab, sum(h)
AS h, round(sum(h)/(sum(ab)-sign(sum(ab))+1),3) AS ba, sum(b2) AS b2,
sum(b3) AS b3, sum(liga_xpalka.hr) AS hr, sum(h+b2+2*b3+3*liga_xpalka.hr) AS
tb, round(sum(h+b2+2*b3+3*liga_xpalka.hr)/(sum(ab)-sign(sum(ab))+1),3) AS
sa, sum(r) AS r, sum(rbi) AS rbi, sum(bb) AS bb, sum(hb) AS hb, sum(so) AS
so, round(sum(so)/(sum(ab)-sign(sum(ab))+1),3) AS soa, sum(sh) AS sh,
sum(sf) AS sf, sum(fo) AS fo, sum(o) AS o, sum(sb) AS sb, sum(cs) AS cs,
round(sum(sb)/(sum(sb+cs)-sign(sum(sb+cs))+1),3) AS sba, sum(b1) AS b1,
round(sum(h+bb+hb)/(sum(ab+bb+hb+sf)-sign(sum(ab+bb+hb+sf))+1),3) AS oba,
round(sum(b1)/(sum(ab+bb+hb+sh)-sign(sum(ab+bb+hb+sh))+1),3) AS b1a FROM
liga_xpalka, liga, liga_hraci, liga_tymy, liga_akce_tymy WHERE
liga_xpalka.pid=liga_hraci.pid AND liga_xpalka.tid = liga_akce_tymy.atid AND
liga_akce_tymy.tid = liga_tymy.tid AND liga.zid=liga_xpalka.zid AND
liga_xpalka.zaid='252' GROUP BY liga_xpalka.pid ORDER BY ba DESC, pab DESC,
jmeno ASC"

    @record_array = ActiveRecord::Base.connection.select(sql)
    # puts @record_array;
    # @record_array = @record_array.to_s
    @my_array = Array.new()
    @record_array.each do |row|
      row.each do |k, v|
        # puts "column #{k} contains #{v}"
        hash = {k.to_s => v.to_s}
      end
      @my_array.push(hash)
    end


    puts @my_array

  end

  # GET /hitters/1
  # GET /hitters/1.json
  def show
  end

  # GET /hitters/new
  def new
    # @hitter = Hitter.new
  end

  # GET /hitters/1/edit
  def edit
  end

  # POST /hitters
  # POST /hitters.json
  def create
    @hitter = Hitter.new(hitter_params)

    respond_to do |format|
      if @hitter.save
        format.html { redirect_to @hitter, notice: 'Hitter was successfully created.' }
        format.json { render :show, status: :created, location: @hitter }
      else
        format.html { render :new }
        format.json { render json: @hitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hitters/1
  # PATCH/PUT /hitters/1.json
  def update
    respond_to do |format|
      if @hitter.update(hitter_params)
        format.html { redirect_to @hitter, notice: 'Hitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @hitter }
      else
        format.html { render :edit }
        format.json { render json: @hitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hitters/1
  # DELETE /hitters/1.json
  def destroy
    @hitter.destroy
    respond_to do |format|
      format.html { redirect_to hitters_url, notice: 'Hitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hitter
      @hitter = Hitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hitter_params
      params[:hitter]
    end
end

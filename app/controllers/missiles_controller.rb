class MissilesController < ApplicationController
  before_action :set_missile, only: [:show, :edit, :update, :destroy]

  # GET /missiles
  # GET /missiles.json
  def index
    @missiles = Missile.all
  end

  # GET /missiles/1
  # GET /missiles/1.json
  def show
  end

  # GET /missiles/new
  def new
    @missile = Missile.new
  end

  # GET /missiles/1/edit
  def edit
  end

  # POST /missiles
  # POST /missiles.json
  def create
    @missile = Missile.new(missile_params)

    respond_to do |format|
      if @missile.save
        format.html { redirect_to @missile, notice: 'Missile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @missile }
      else
        format.html { render action: 'new' }
        format.json { render json: @missile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missiles/1
  # PATCH/PUT /missiles/1.json
  def update
    respond_to do |format|
      if @missile.update(missile_params)
        format.html { redirect_to @missile, notice: 'Missile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @missile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missiles/1
  # DELETE /missiles/1.json
  def destroy
    @missile.destroy
    respond_to do |format|
      format.html { redirect_to missiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missile
      @missile = Missile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missile_params
      params.require(:missile).permit(:title, :message)
    end
end

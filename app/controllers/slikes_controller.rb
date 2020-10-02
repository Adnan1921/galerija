class SlikesController < ApplicationController
  before_action :set_slike, only: [:show, :edit, :update, :destroy]

  # GET /slikes
  # GET /slikes.json
  def index
    @slikes = Slike.all
  end

  # GET /slikes/1
  # GET /slikes/1.json
  def show
  end

  # GET /slikes/new
  def new
    @slike = Slike.new
  end

  # GET /slikes/1/edit
  def edit
  end

  # POST /slikes
  # POST /slikes.json
  def create
    @slike = Slike.new(slike_params)

    respond_to do |format|
      if @slike.save
        format.html { redirect_to @slike, notice: 'Slike was successfully created.' }
        format.json { render :show, status: :created, location: @slike }
      else
        format.html { render :new }
        format.json { render json: @slike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slikes/1
  # PATCH/PUT /slikes/1.json
  def update
    respond_to do |format|
      if @slike.update(slike_params)
        format.html { redirect_to @slike, notice: 'Slike was successfully updated.' }
        format.json { render :show, status: :ok, location: @slike }
      else
        format.html { render :edit }
        format.json { render json: @slike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slikes/1
  # DELETE /slikes/1.json
  def destroy
    @slike.destroy
    respond_to do |format|
      format.html { redirect_to slikes_url, notice: 'Slike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slike
      @slike = Slike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slike_params
      params.require(:slike).permit(:naziv_slike, :slika, :datum, :avatar)
    end
end

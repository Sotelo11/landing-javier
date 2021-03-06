class OrdensController < ApplicationController
  before_action :set_orden, only: [:show, :edit, :update, :destroy]

  # GET /ordens
  # GET /ordens.json
  def index
    @ordens = Orden.all
  end

  # GET /ordens/1
  # GET /ordens/1.json
  def show
  end

  # GET /ordens/new
  def new
    @orden = Orden.new
  end

  # GET /ordens/1/edit
  def edit
  end

  # POST /ordens
  # POST /ordens.json
  def create
    @orden = Orden.new(orden_params)

    respond_to do |format|
      if @orden.save
        format.html { redirect_to @orden, notice: 'Orden was successfully created.' }
        format.json { render :show, status: :created, location: @orden }
      else
        format.html { render :new }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordens/1
  # PATCH/PUT /ordens/1.json
  def update
    respond_to do |format|
      if @orden.update(orden_params)
        format.html { redirect_to @orden, notice: 'Orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden }
      else
        format.html { render :edit }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordens/1
  # DELETE /ordens/1.json
  def destroy
    @orden.destroy
    respond_to do |format|
      format.html { redirect_to ordens_url, notice: 'Orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden
      @orden = Orden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orden_params
      params.require(:orden).permit(:cliente_id, :codigo, :proceso, :entrega, :cierre)
    end
end

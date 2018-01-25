class PaliwosController < ApplicationController
  before_action :set_paliwo, only: [:show, :edit, :update, :destroy]

  # GET /paliwos
  # GET /paliwos.json
  def index
    @paliwos = Paliwo.all
  end

  # GET /paliwos/1
  # GET /paliwos/1.json
  def show
  end

  # GET /paliwos/new
  def new
    @paliwo = Paliwo.new
  end

  # GET /paliwos/1/edit
  def edit
  end

  # POST /paliwos
  # POST /paliwos.json
  def create
    @paliwo = Paliwo.new(paliwo_params)

    respond_to do |format|
      if @paliwo.save
        format.html { redirect_to @paliwo, notice: 'Paliwo was successfully created.' }
        format.json { render :show, status: :created, location: @paliwo }
      else
        format.html { render :new }
        format.json { render json: @paliwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paliwos/1
  # PATCH/PUT /paliwos/1.json
  def update
    respond_to do |format|
      if @paliwo.update(paliwo_params)
        format.html { redirect_to @paliwo, notice: 'Paliwo was successfully updated.' }
        format.json { render :show, status: :ok, location: @paliwo }
      else
        format.html { render :edit }
        format.json { render json: @paliwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paliwos/1
  # DELETE /paliwos/1.json
  def destroy
    @paliwo.destroy
    respond_to do |format|
      format.html { redirect_to paliwos_url, notice: 'Paliwo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paliwo
      @paliwo = Paliwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paliwo_params
      params.require(:paliwo).permit(:name)
    end
end

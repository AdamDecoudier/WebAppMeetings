class EstDuTypesController < ApplicationController
  before_action :set_est_du_type, only: [:show, :edit, :update, :destroy]

  # GET /est_du_types
  # GET /est_du_types.json
  def index
    @est_du_types = EstDuType.all
  end

  # GET /est_du_types/1
  # GET /est_du_types/1.json
  def show
  end

  # GET /est_du_types/new
  def new
    @est_du_type = EstDuType.new
  end

  # GET /est_du_types/1/edit
  def edit
  end

  # POST /est_du_types
  # POST /est_du_types.json
  def create
    @est_du_type = EstDuType.new(est_du_type_params)

    respond_to do |format|
      if @est_du_type.save
        format.html { redirect_to @est_du_type, notice: 'Est du type was successfully created.' }
        format.json { render :show, status: :created, location: @est_du_type }
      else
        format.html { render :new }
        format.json { render json: @est_du_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /est_du_types/1
  # PATCH/PUT /est_du_types/1.json
  def update
    respond_to do |format|
      if @est_du_type.update(est_du_type_params)
        format.html { redirect_to @est_du_type, notice: 'Est du type was successfully updated.' }
        format.json { render :show, status: :ok, location: @est_du_type }
      else
        format.html { render :edit }
        format.json { render json: @est_du_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /est_du_types/1
  # DELETE /est_du_types/1.json
  def destroy
    @est_du_type.destroy
    respond_to do |format|
      format.html { redirect_to est_du_types_url, notice: 'Est du type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_est_du_type
      @est_du_type = EstDuType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def est_du_type_params
      params.require(:est_du_type).permit(:etablissement_id, :parametrage_id)
    end
end

class ParametragesController < ApplicationController
  before_action :set_parametrage, only: [:show, :edit, :update, :destroy]

  # GET /parametrages
  # GET /parametrages.json
  def index
    @parametrages = Parametrage.all
  end

  # GET /parametrages/1
  # GET /parametrages/1.json
  def show
  end

  # GET /parametrages/new
  def new
    @parametrage = Parametrage.new
  end

  # GET /parametrages/1/edit
  def edit
  end

  # POST /parametrages
  # POST /parametrages.json
  def create
    @parametrage = Parametrage.new(parametrage_params)

    respond_to do |format|
      if @parametrage.save
        format.html { redirect_to @parametrage, notice: 'Parametrage was successfully created.' }
        format.json { render :show, status: :created, location: @parametrage }
      else
        format.html { render :new }
        format.json { render json: @parametrage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parametrages/1
  # PATCH/PUT /parametrages/1.json
  def update
    respond_to do |format|
      if @parametrage.update(parametrage_params)
        format.html { redirect_to @parametrage, notice: 'Parametrage was successfully updated.' }
        format.json { render :show, status: :ok, location: @parametrage }
      else
        format.html { render :edit }
        format.json { render json: @parametrage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parametrages/1
  # DELETE /parametrages/1.json
  def destroy
    @parametrage.destroy
    respond_to do |format|
      format.html { redirect_to parametrages_url, notice: 'Parametrage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parametrage
      @parametrage = Parametrage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parametrage_params
      params.require(:parametrage).permit(:libelle, :typeParam)
    end
end

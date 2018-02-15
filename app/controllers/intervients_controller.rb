class IntervientsController < ApplicationController
  before_action :set_intervient, only: [:show, :edit, :update, :destroy]

  # GET /intervients
  # GET /intervients.json
  def index
    @intervients = Intervient.all
  end

  # GET /intervients/1
  # GET /intervients/1.json
  def show
  end

  # GET /intervients/new
  def new
    @intervient = Intervient.new
  end

  # GET /intervients/1/edit
  def edit
  end

  # POST /intervients
  # POST /intervients.json
  def create
    @intervient = Intervient.new(intervient_params)

    respond_to do |format|
      if @intervient.save
        format.html { redirect_to @intervient, notice: 'Intervient was successfully created.' }
        format.json { render :show, status: :created, location: @intervient }
      else
        format.html { render :new }
        format.json { render json: @intervient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intervients/1
  # PATCH/PUT /intervients/1.json
  def update
    respond_to do |format|
      if @intervient.update(intervient_params)
        format.html { redirect_to @intervient, notice: 'Intervient was successfully updated.' }
        format.json { render :show, status: :ok, location: @intervient }
      else
        format.html { render :edit }
        format.json { render json: @intervient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervients/1
  # DELETE /intervients/1.json
  def destroy
    @intervient.destroy
    respond_to do |format|
      format.html { redirect_to intervients_url, notice: 'Intervient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervient
      @intervient = Intervient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intervient_params
      params.require(:intervient).permit(:intervenant_id, :intervention_id)
    end
end

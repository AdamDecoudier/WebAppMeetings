class IntervenantsController < ApplicationController
  before_action :set_intervenant, only: [:show, :edit, :update, :destroy]

  # GET /intervenants
  # GET /intervenants.json
  def index
    @intervenants = Intervenant.all
  end

  # GET /intervenants/1
  # GET /intervenants/1.json
  def show
  end

  # GET /intervenants/new
  def new
    @intervenant = Intervenant.new
  end

  # GET /intervenants/1/edit
  def edit
  end

  # POST /intervenants
  # POST /intervenants.json
  def create
    @intervenant = Intervenant.new(intervenant_params)

    respond_to do |format|
      if @intervenant.save
        format.html { redirect_to @intervenant, notice: 'Intervenant was successfully created.' }
        format.json { render :show, status: :created, location: @intervenant }
      else
        format.html { render :new }
        format.json { render json: @intervenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intervenants/1
  # PATCH/PUT /intervenants/1.json
  def update
    respond_to do |format|
      if @intervenant.update(intervenant_params)
        format.html { redirect_to @intervenant, notice: 'Intervenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @intervenant }
      else
        format.html { render :edit }
        format.json { render json: @intervenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervenants/1
  # DELETE /intervenants/1.json
  def destroy
    @intervenant.destroy
    respond_to do |format|
      format.html { redirect_to intervenants_url, notice: 'Intervenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervenant
      @intervenant = Intervenant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intervenant_params
      params.require(:intervenant).permit(:estResponsablePmis, :pseudo, :mdp, :tel, :nom, :prenom, :mail, :adressePerso1, :adressePerso2, :adressePersoCp, :adressePersoVille, :adressePro1, :adressePro2, :adresseProCp, :adresseProVille, :metier_id)
    end
end

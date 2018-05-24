class ResponsableEtablissementsController < ApplicationController
  before_action :set_responsable_etablissement, only: [:show, :edit, :update, :destroy]

  # GET /responsable_etablissements
  # GET /responsable_etablissements.json
  def index
    @responsable_etablissements = ResponsableEtablissement.all
  end

  # GET /responsable_etablissements/1
  # GET /responsable_etablissements/1.json
  def show
  end

  # GET /responsable_etablissements/new
  def new
    @responsable_etablissement = ResponsableEtablissement.new
  end

  # GET /responsable_etablissements/1/edit
  def edit
  end

  # POST /responsable_etablissements
  # POST /responsable_etablissements.json
  def create
    @responsable_etablissement = ResponsableEtablissement.new(responsable_etablissement_params)

    respond_to do |format|
      if @responsable_etablissement.save
        format.html { redirect_to @responsable_etablissement, notice: 'Responsable etablissement was successfully created.' }
        format.json { render :show, status: :created, location: @responsable_etablissement }
      else
        format.html { render :new }
        format.json { render json: @responsable_etablissement.errors, status: :unprocessable_entity }
      end
    end

  # PATCH/PUT /responsable_etablissements/1
  # PATCH/PUT /responsable_etablissements/1.json
  def update
    respond_to do |format|
      if @responsable_etablissement.update(responsable_etablissement_params)
        format.html { redirect_to @responsable_etablissement, notice: 'Responsable etablissement was successfully updated.' }
        format.json { render :show, status: :ok, location: @responsable_etablissement }
      else
        format.html { render :edit }
        format.json { render json: @responsable_etablissement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsable_etablissements/1
  # DELETE /responsable_etablissements/1.json
  def destroy
    @responsable_etablissement.destroy
    respond_to do |format|
      format.html { redirect_to responsable_etablissements_url, notice: 'Responsable etablissement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsable_etablissement
      @responsable_etablissement = ResponsableEtablissement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def responsable_etablissement_params
      params.require(:responsable_etablissement).permit(:pseudo, :mdp, :nom, :prenom, :mail, :fonction, :tel, :etablissement_id)
    end
end

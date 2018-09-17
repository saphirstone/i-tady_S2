class RegiseursController < ApplicationController
  before_action :set_regiseur, only: [:show, :edit, :update, :destroy]

  # GET /regiseurs
  def index
    @regiseurs = Regiseur.all.order("created_at desc")
  end

  # GET /regiseurs/1
  def show
  end

  # GET /regiseurs/new
  def new
    @regiseur = current_user.regiseurs.build
  end

  # GET /regiseurs/1/edit
  def edit
  end

  # POST /regiseurs
  def create
    @regiseur = current_user.regiseurs.build(regiseur_params)

    if @regiseur.save
      redirect_to @regiseur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /regiseurs/1
  def update
    if @regiseur.update(regiseur_params)
      redirect_to @regiseur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /regiseurs/1
  def destroy
    @regiseur.destroy
    redirect_to regiseurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regiseur
      @regiseur = Regiseur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def regiseur_params
      params.require(:regiseur).permit(:nom_et_prenom, :poste, :email, :info_carriere, :ambition, :projet)
    end
end

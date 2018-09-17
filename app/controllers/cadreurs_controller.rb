class CadreursController < ApplicationController
  before_action :set_cadreur, only: [:show, :edit, :update, :destroy]

  # GET /cadreurs
  def index
    @cadreurs = Cadreur.all.order("created_at desc")
  end

  # GET /cadreurs/1
  def show
  end

  # GET /cadreurs/new
  def new
    @cadreur = current_user.cadreurs.build
  end

  # GET /cadreurs/1/edit
  def edit
  end

  # POST /cadreurs
  def create
    @cadreur = current_user.cadreurs.build(cadreur_params)

    if @cadreur.save
      redirect_to @cadreur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /cadreurs/1
  def update
    if @cadreur.update(cadreur_params)
      redirect_to @cadreur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /cadreurs/1
  def destroy
    @cadreur.destroy
    redirect_to cadreurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadreur
      @cadreur = Cadreur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cadreur_params
      params.require(:cadreur).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

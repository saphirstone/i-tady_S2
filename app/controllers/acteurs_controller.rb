class ActeursController < ApplicationController
  before_action :set_acteur, only: [:show, :edit, :update, :destroy]

  # GET /acteurs
  def index
    @acteurs = Acteur.all.order("created_at desc")
  end

  # GET /acteurs/1
  def show
  end

  # GET /acteurs/new
  def new
    @acteur = current_user.acteurs.build
  end

  # GET /acteurs/1/edit
  def edit
  end

  # POST /acteurs
  def create
    @acteur = current_user.acteurs.build(acteur_params)

    if @acteur.save
      redirect_to @acteur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /acteurs/1
  def update
    if @acteur.update(acteur_params)
      redirect_to @acteur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /acteurs/1
  def destroy
    @acteur.destroy
    redirect_to acteurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acteur
      @acteur = Acteur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acteur_params
      params.require(:acteur).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

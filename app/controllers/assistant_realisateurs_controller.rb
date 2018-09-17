class AssistantRealisateursController < ApplicationController
  before_action :set_assistant_realisateur, only: [:show, :edit, :update, :destroy]

  # GET /assistant_realisateurs
  def index
    @assistant_realisateurs = AssistantRealisateur.all.order("created_at desc")
  end

  # GET /assistant_realisateurs/1
  def show
  end

  # GET /assistant_realisateurs/new
  def new
    @assistant_realisateur = current_user.assistant_realisateurs.build
  end

  # GET /assistant_realisateurs/1/edit
  def edit
  end

  # POST /assistant_realisateurs
  def create
    @assistant_realisateur = current_user.assistant_realisateurs.build(assistant_realisateur_params)

    if @assistant_realisateur.save
      redirect_to @assistant_realisateur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /assistant_realisateurs/1
  def update
    if @assistant_realisateur.update(assistant_realisateur_params)
      redirect_to @assistant_realisateur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /assistant_realisateurs/1
  def destroy
    @assistant_realisateur.destroy
    redirect_to assistant_realisateurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistant_realisateur
      @assistant_realisateur = AssistantRealisateur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assistant_realisateur_params
      params.require(:assistant_realisateur).permit(:nom_et_prenom, :poste, :email, :info_carriere, :ambition, :numero, :projet)
    end
end

class RealisateursController < ApplicationController
  before_action :set_realisateur, only: [:show, :edit, :update, :destroy]

  # GET /realisateurs
  def index
    @realisateurs = Realisateur.all.order("created_at desc")
  end

  # GET /realisateurs/1
  def show
  end

  # GET /realisateurs/new
  def new
    @realisateur = current_user.realisateurs.build
  end

  # GET /realisateurs/1/edit
  def edit
  end

  # POST /realisateurs
  def create
    @realisateur = current_user.realisateurs.build(realisateur_params)

    if @realisateur.save
      redirect_to @realisateur, notice: 'Realisateur was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /realisateurs/1
  def update
    if @realisateur.update(realisateur_params)
      redirect_to @realisateur, notice: 'Realisateur was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /realisateurs/1
  def destroy
    @realisateur.destroy
    redirect_to realisateurs_url, notice: 'Realisateur was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realisateur
      @realisateur = Realisateur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def realisateur_params
      params.require(:realisateur).permit(:nom_et_prenom, :numero, :email, :equipe, :info_carriere, :ambition)
    end
end

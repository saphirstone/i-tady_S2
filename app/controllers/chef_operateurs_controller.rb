class ChefOperateursController < ApplicationController
  before_action :set_chef_operateur, only: [:show, :edit, :update, :destroy]

  # GET /chef_operateurs
  def index
    @chef_operateurs = ChefOperateur.all.order("created_at desc")
  end

  # GET /chef_operateurs/1
  def show
  end

  # GET /chef_operateurs/new
  def new
    @chef_operateur = current_user.chef_operateurs.build
  end

  # GET /chef_operateurs/1/edit
  def edit
  end

  # POST /chef_operateurs
  def create
    @chef_operateur = current_user.chef_operateurs.build(chef_operateur_params)

    if @chef_operateur.save
      redirect_to @chef_operateur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /chef_operateurs/1
  def update
    if @chef_operateur.update(chef_operateur_params)
      redirect_to @chef_operateur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /chef_operateurs/1
  def destroy
    @chef_operateur.destroy
    redirect_to chef_operateurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_operateur
      @chef_operateur = ChefOperateur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_operateur_params
      params.require(:chef_operateur).permit(:nom_et_prenom, :email, :info_carriere, :ambition, :numero)
    end
end

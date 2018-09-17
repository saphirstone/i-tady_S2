class ChefDecorateursController < ApplicationController
  before_action :set_chef_decorateur, only: [:show, :edit, :update, :destroy]

  # GET /chef_decorateurs
  def index
    @chef_decorateurs = ChefDecorateur.all.order("created_at desc")
  end

  # GET /chef_decorateurs/1
  def show
  end

  # GET /chef_decorateurs/new
  def new
    @chef_decorateur = current_user.chef_decorateurs.build
  end

  # GET /chef_decorateurs/1/edit
  def edit
  end

  # POST /chef_decorateurs
  def create
    @chef_decorateur = current_user.chef_decorateurs.build(chef_decorateur_params)

    if @chef_decorateur.save
      redirect_to @chef_decorateur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /chef_decorateurs/1
  def update
    if @chef_decorateur.update(chef_decorateur_params)
      redirect_to @chef_decorateur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /chef_decorateurs/1
  def destroy
    @chef_decorateur.destroy
    redirect_to chef_decorateurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_decorateur
      @chef_decorateur = ChefDecorateur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_decorateur_params
      params.require(:chef_decorateur).permit(:nom_et_prenom, :email, :info_carriere, :specialite, :ambition)
    end
end

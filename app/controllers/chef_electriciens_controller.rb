class ChefElectriciensController < ApplicationController
  before_action :set_chef_electricien, only: [:show, :edit, :update, :destroy]

  # GET /chef_electriciens
  def index
    @chef_electriciens = ChefElectricien.all.order("created_at desc")
  end

  # GET /chef_electriciens/1
  def show
  end

  # GET /chef_electriciens/new
  def new
    @chef_electricien = current_user.chef_electriciens.build
  end

  # GET /chef_electriciens/1/edit
  def edit
  end

  # POST /chef_electriciens
  def create
    @chef_electricien = current_user.chef_electriciens.build(chef_electricien_params)

    if @chef_electricien.save
      redirect_to @chef_electricien, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /chef_electriciens/1
  def update
    if @chef_electricien.update(chef_electricien_params)
      redirect_to @chef_electricien, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /chef_electriciens/1
  def destroy
    @chef_electricien.destroy
    redirect_to chef_electriciens_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_electricien
      @chef_electricien = ChefElectricien.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_electricien_params
      params.require(:chef_electricien).permit(:nom_et_prenom, :numero, :email, :equipe, :info_carriere, :ambition)
    end
end

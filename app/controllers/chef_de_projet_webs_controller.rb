class ChefDeProjetWebsController < ApplicationController
  before_action :set_chef_de_projet_web, only: [:show, :edit, :update, :destroy]

  # GET /chef_de_projet_webs
  def index
    @chef_de_projet_webs = ChefDeProjetWeb.all.order("created_at desc")
  end

  # GET /chef_de_projet_webs/1
  def show
  end

  # GET /chef_de_projet_webs/new
  def new
    @chef_de_projet_web = current_user.chef_de_projet_webs.build
  end

  # GET /chef_de_projet_webs/1/edit
  def edit
  end

  # POST /chef_de_projet_webs
  def create
    @chef_de_projet_web = current_user.chef_de_projet_webs.build(chef_de_projet_web_params)

    if @chef_de_projet_web.save
      redirect_to @chef_de_projet_web, notice: 'Chef de projet web was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /chef_de_projet_webs/1
  def update
    if @chef_de_projet_web.update(chef_de_projet_web_params)
      redirect_to @chef_de_projet_web, notice: 'Chef de projet web was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /chef_de_projet_webs/1
  def destroy
    @chef_de_projet_web.destroy
    redirect_to chef_de_projet_webs_url, notice: 'Chef de projet web was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_de_projet_web
      @chef_de_projet_web = ChefDeProjetWeb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_de_projet_web_params
      params.require(:chef_de_projet_web).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

class IntegrateurWebsController < ApplicationController
  before_action :set_integrateur_web, only: [:show, :edit, :update, :destroy]

  # GET /integrateur_webs
  def index
    @integrateur_webs = IntegrateurWeb.all.order("created_at desc")
  end

  # GET /integrateur_webs/1
  def show
  end

  # GET /integrateur_webs/new
  def new
    @integrateur_web = current_user.integrateur_webs.build
  end

  # GET /integrateur_webs/1/edit
  def edit
  end

  # POST /integrateur_webs
  def create
    @integrateur_web = current_user.integrateur_webs.build(integrateur_web_params)

    if @integrateur_web.save
      redirect_to @integrateur_web, notice: 'Integrateur web was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /integrateur_webs/1
  def update
    if @integrateur_web.update(integrateur_web_params)
      redirect_to @integrateur_web, notice: 'Integrateur web was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /integrateur_webs/1
  def destroy
    @integrateur_web.destroy
    redirect_to integrateur_webs_url, notice: 'Integrateur web was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integrateur_web
      @integrateur_web = IntegrateurWeb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def integrateur_web_params
      params.require(:integrateur_web).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

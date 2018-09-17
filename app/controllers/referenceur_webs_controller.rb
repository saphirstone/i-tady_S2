class ReferenceurWebsController < ApplicationController
  before_action :set_referenceur_web, only: [:show, :edit, :update, :destroy]

  # GET /referenceur_webs
  def index
    @referenceur_webs = ReferenceurWeb.all.order("created_at desc")
  end

  # GET /referenceur_webs/1
  def show
  end

  # GET /referenceur_webs/new
  def new
    @referenceur_web = current_user.referenceur_webs.build
  end

  # GET /referenceur_webs/1/edit
  def edit
  end

  # POST /referenceur_webs
  def create
    @referenceur_web = current_user.referenceur_webs.build(referenceur_web_params)

    if @referenceur_web.save
      redirect_to @referenceur_web, notice: 'Referenceur web was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /referenceur_webs/1
  def update
    if @referenceur_web.update(referenceur_web_params)
      redirect_to @referenceur_web, notice: 'Referenceur web was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /referenceur_webs/1
  def destroy
    @referenceur_web.destroy
    redirect_to referenceur_webs_url, notice: 'Referenceur web was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referenceur_web
      @referenceur_web = ReferenceurWeb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def referenceur_web_params
      params.require(:referenceur_web).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

class WebMastersController < ApplicationController
  before_action :set_web_master, only: [:show, :edit, :update, :destroy]

  # GET /web_masters
  def index
    @web_masters = WebMaster.all.order("created_at desc")
  end

  # GET /web_masters/1
  def show
  end

  # GET /web_masters/new
  def new
    @web_master = current_user.web_masters.build
  end

  # GET /web_masters/1/edit
  def edit
  end

  # POST /web_masters
  def create
    @web_master = current_user.web_masters.build(web_master_params)

    if @web_master.save
      redirect_to @web_master, notice: 'Web master was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /web_masters/1
  def update
    if @web_master.update(web_master_params)
      redirect_to @web_master, notice: 'Web master was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /web_masters/1
  def destroy
    @web_master.destroy
    redirect_to web_masters_url, notice: 'Web master was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_master
      @web_master = WebMaster.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def web_master_params
      params.require(:web_master).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

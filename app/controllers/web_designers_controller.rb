class WebDesignersController < ApplicationController
  before_action :set_web_designer, only: [:show, :edit, :update, :destroy]

  # GET /web_designers
  def index
    @web_designers = WebDesigner.all.order("created_at desc")
  end

  # GET /web_designers/1
  def show
  end

  # GET /web_designers/new
  def new
    @web_designer = current_user.web_designers.build
  end

  # GET /web_designers/1/edit
  def edit
  end

  # POST /web_designers
  def create
    @web_designer = current_user.web_designers.build(web_designer_params)

    if @web_designer.save
      redirect_to @web_designer, notice: 'Web designer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /web_designers/1
  def update
    if @web_designer.update(web_designer_params)
      redirect_to @web_designer, notice: 'Web designer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /web_designers/1
  def destroy
    @web_designer.destroy
    redirect_to web_designers_url, notice: 'Web designer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_designer
      @web_designer = WebDesigner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def web_designer_params
      params.require(:web_designer).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end

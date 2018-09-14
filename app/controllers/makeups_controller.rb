class MakeupsController < ApplicationController
  before_action :set_makeup, only: [:show, :edit, :update, :destroy]

  # GET /makeups
  def index
    @makeups = Makeup.all.order("created_at desc")
  end

  # GET /makeups/1
  def show
  end

  # GET /makeups/new
  def new
    @makeup = current_user.makeups.build
  end

  # GET /makeups/1/edit
  def edit
  end

  # POST /makeups
  def create
    @makeup = current_user.makeups.build(makeup_params)

    if @makeup.save
      redirect_to @makeup, notice: 'Makeup was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /makeups/1
  def update
    if @makeup.update(makeup_params)
      redirect_to @makeup, notice: 'Makeup was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /makeups/1
  def destroy
    @makeup.destroy
    redirect_to makeups_url, notice: 'Makeup was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makeup
      @makeup = Makeup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def makeup_params
      params.require(:makeup).permit(:nom_et_prenom, :email, :equipe, :info_carriere, :ambition, :specialite)
    end
end

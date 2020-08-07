class PrincipalelementsController < ApplicationController
  before_action :set_principalelement, only: [:show, :edit, :update, :destroy]

  # GET /principalelements
  # GET /principalelements.json
  def index
    @principalelements = Principalelement.all
  end

  # GET /principalelements/1
  # GET /principalelements/1.json
  #def show
  #end

  # GET /principalelements/new
  def new
    @principalelement = Principalelement.new
  end

  # GET /principalelements/1/edit
  def edit
  end

  # POST /principalelements
  # POST /principalelements.json
  def create
    @principalelement = Principalelement.new(principalelement_params)

    respond_to do |format|
      if @principalelement.save
        format.html { redirect_to '/principal/index', notice: 'Principalelement was successfully created.' }
        format.json { render :show, status: :created, location: @principalelement }
      else
        format.html { render :new }
        format.json { render json: @principalelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /principalelements/1
  # PATCH/PUT /principalelements/1.json
  def update
    respond_to do |format|
      if @principalelement.update(principalelement_params)
        format.html { redirect_to '/principal/index', notice: 'Principalelement was successfully updated.' }
        format.json { render :show, status: :ok, location: @principalelement }
      else
        format.html { render :edit }
        format.json { render json: @principalelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principalelements/1
  # DELETE /principalelements/1.json
  def destroy
    @principalelement.destroy
    respond_to do |format|
      format.html { redirect_to principalelements_url, notice: 'Principalelement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principalelement
      @principalelement = Principalelement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def principalelement_params
      params.require(:principalelement).permit(:urlImg, :urlVideo, :img)
    end
end

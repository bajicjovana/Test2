class OsobasController < ApplicationController
  before_action :set_osoba, only: [:show, :edit, :update, :destroy]

  # GET /osobas
  # GET /osobas.json
  def index
    @osobas = Osoba.all
  end

  # GET /osobas/1
  # GET /osobas/1.json
  def show
  end

  # GET /osobas/new
  def new
    @osoba = Osoba.new
  end

  # GET /osobas/1/edit
  def edit
  end

  # POST /osobas
  # POST /osobas.json
  def create
    @osoba = Osoba.new(osoba_params)

    respond_to do |format|
      if @osoba.save
        format.html { redirect_to @osoba, notice: 'Osoba was successfully created.' }
        format.json { render :show, status: :created, location: @osoba }
      else
        format.html { render :new }
        format.json { render json: @osoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osobas/1
  # PATCH/PUT /osobas/1.json
  def update
    respond_to do |format|
      if @osoba.update(osoba_params)
        format.html { redirect_to @osoba, notice: 'Osoba was successfully updated.' }
        format.json { render :show, status: :ok, location: @osoba }
      else
        format.html { render :edit }
        format.json { render json: @osoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osobas/1
  # DELETE /osobas/1.json
  def destroy
    @osoba.destroy
    respond_to do |format|
      format.html { redirect_to osobas_url, notice: 'Osoba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osoba
      @osoba = Osoba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def osoba_params
      params.require(:osoba).permit(:ime, :prezime, :godiste)
    end
end

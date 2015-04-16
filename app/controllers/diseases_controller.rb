class DiseasesController < ApplicationController
  before_action :set_disease, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js
   before_action :all_diseases, only: [:index, :create, :destroy, :update]
   def all_diseases
   @diseases = Disease.all
   end
  # GET /diseases
  # GET /diseases.json
  def index
    @diseases = Disease.all
  end

  # GET /diseases/1
  # GET /diseases/1.json
  def show
  end

  # GET /diseases/new
  def new
    @disease = Disease.new
  end

  # GET /diseases/1/edit
  def edit
  end

  # POST /diseases
  # POST /diseases.json

  def create
    @disease = Disease.new(disease_params)
    @disease.save!
    @current_disease = @disease
    @diseases = Disease.all
    
  end

  # PATCH/PUT /diseases/1
  # PATCH/PUT /diseases/1.json
  def update    
    @disease.update!(disease_params)
  end

  # DELETE /diseases/1
  # DELETE /diseases/1.json
  def destroy
   @disease.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_params
      params.require(:disease).permit(:name, :cause, :symptom, :treatment)
    end
end

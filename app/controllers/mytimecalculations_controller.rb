class MytimecalculationsController < ApplicationController
  before_action :set_mytimecalculation, only: %i[ show edit update destroy ]

  # GET /mytimecalculations or /mytimecalculations.json
  def index
    @mytimecalculations = Mytimecalculation.all
  end

  # GET /mytimecalculations/1 or /mytimecalculations/1.json
  def show
  end

  # GET /mytimecalculations/new
  def new
    @mytimecalculation = Mytimecalculation.new
  end

  # GET /mytimecalculations/1/edit
  def edit
  end

  # POST /mytimecalculations or /mytimecalculations.json
  def create
    @mytimecalculation = Mytimecalculation.new(mytimecalculation_params)

    respond_to do |format|
      if @mytimecalculation.save
        format.html { redirect_to @mytimecalculation, notice: "Mytimecalculation was successfully created." }
        format.json { render :show, status: :created, location: @mytimecalculation }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @mytimecalculation.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /mytimecalculations/1 or /mytimecalculations/1.json
  def update
    respond_to do |format|
      if @mytimecalculation.update(mytimecalculation_params)
        format.html { redirect_to @mytimecalculation, notice: "Mytimecalculation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @mytimecalculation }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @mytimecalculation.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /mytimecalculations/1 or /mytimecalculations/1.json
  def destroy
    @mytimecalculation.destroy!

    respond_to do |format|
      format.html { redirect_to mytimecalculations_path, notice: "Mytimecalculation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytimecalculation
      @mytimecalculation = Mytimecalculation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def mytimecalculation_params
      params.expect(mytimecalculation: [ :user_id, :time_operation_id, :mydatetime, :resultat ])
    end
end

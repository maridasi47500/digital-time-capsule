class OthertimecalculationhasargumentsController < ApplicationController
  before_action :set_othertimecalculationhasargument, only: %i[ show edit update destroy ]

  # GET /othertimecalculationhasarguments or /othertimecalculationhasarguments.json
  def index
    @othertimecalculationhasarguments = Othertimecalculationhasargument.all
  end

  # GET /othertimecalculationhasarguments/1 or /othertimecalculationhasarguments/1.json
  def show
  end

  # GET /othertimecalculationhasarguments/new
  def new
    @othertimecalculationhasargument = Othertimecalculationhasargument.new
  end

  # GET /othertimecalculationhasarguments/1/edit
  def edit
  end

  # POST /othertimecalculationhasarguments or /othertimecalculationhasarguments.json
  def create
    @othertimecalculationhasargument = Othertimecalculationhasargument.new(othertimecalculationhasargument_params)

    respond_to do |format|
      if @othertimecalculationhasargument.save
        format.html { redirect_to @othertimecalculationhasargument, notice: "Othertimecalculationhasargument was successfully created." }
        format.json { render :show, status: :created, location: @othertimecalculationhasargument }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @othertimecalculationhasargument.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /othertimecalculationhasarguments/1 or /othertimecalculationhasarguments/1.json
  def update
    respond_to do |format|
      if @othertimecalculationhasargument.update(othertimecalculationhasargument_params)
        format.html { redirect_to @othertimecalculationhasargument, notice: "Othertimecalculationhasargument was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @othertimecalculationhasargument }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @othertimecalculationhasargument.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /othertimecalculationhasarguments/1 or /othertimecalculationhasarguments/1.json
  def destroy
    @othertimecalculationhasargument.destroy!

    respond_to do |format|
      format.html { redirect_to othertimecalculationhasarguments_path, notice: "Othertimecalculationhasargument was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_othertimecalculationhasargument
      @othertimecalculationhasargument = Othertimecalculationhasargument.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def othertimecalculationhasargument_params
      params.expect(othertimecalculationhasargument: [ :argument_id, :value, :mytimecalculationhasothertimecalculation_id ])
    end
end

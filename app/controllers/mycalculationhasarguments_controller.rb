class MycalculationhasargumentsController < ApplicationController
  before_action :set_mycalculationhasargument, only: %i[ show edit update destroy ]

  # GET /mycalculationhasarguments or /mycalculationhasarguments.json
  def index
    @mycalculationhasarguments = Mycalculationhasargument.all
  end

  # GET /mycalculationhasarguments/1 or /mycalculationhasarguments/1.json
  def show
  end

  # GET /mycalculationhasarguments/new
  def new
    @mycalculationhasargument = Mycalculationhasargument.new
  end

  # GET /mycalculationhasarguments/1/edit
  def edit
  end

  # POST /mycalculationhasarguments or /mycalculationhasarguments.json
  def create
    @mycalculationhasargument = Mycalculationhasargument.new(mycalculationhasargument_params)

    respond_to do |format|
      if @mycalculationhasargument.save
        format.html { redirect_to @mycalculationhasargument, notice: "Mycalculationhasargument was successfully created." }
        format.json { render :show, status: :created, location: @mycalculationhasargument }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @mycalculationhasargument.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /mycalculationhasarguments/1 or /mycalculationhasarguments/1.json
  def update
    respond_to do |format|
      if @mycalculationhasargument.update(mycalculationhasargument_params)
        format.html { redirect_to @mycalculationhasargument, notice: "Mycalculationhasargument was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @mycalculationhasargument }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @mycalculationhasargument.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /mycalculationhasarguments/1 or /mycalculationhasarguments/1.json
  def destroy
    @mycalculationhasargument.destroy!

    respond_to do |format|
      format.html { redirect_to mycalculationhasarguments_path, notice: "Mycalculationhasargument was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycalculationhasargument
      @mycalculationhasargument = Mycalculationhasargument.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def mycalculationhasargument_params
      params.expect(mycalculationhasargument: [ :mytimecalculation_id, :argument_id ])
    end
end

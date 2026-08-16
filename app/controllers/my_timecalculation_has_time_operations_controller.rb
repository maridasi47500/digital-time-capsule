class MyTimecalculationHasTimeOperationsController < ApplicationController
  before_action :set_my_timecalculation_has_time_operation, only: %i[ show edit update destroy ]

  # GET /my_timecalculation_has_time_operations or /my_timecalculation_has_time_operations.json
  def index
    @my_timecalculation_has_time_operations = MyTimecalculationHasTimeOperation.all
  end

  # GET /my_timecalculation_has_time_operations/1 or /my_timecalculation_has_time_operations/1.json
  def show
  end

  # GET /my_timecalculation_has_time_operations/new
  def new
    @my_timecalculation_has_time_operation = MyTimecalculationHasTimeOperation.new
  end

  # GET /my_timecalculation_has_time_operations/1/edit
  def edit
  end

  # POST /my_timecalculation_has_time_operations or /my_timecalculation_has_time_operations.json
  def create
    @my_timecalculation_has_time_operation = MyTimecalculationHasTimeOperation.new(my_timecalculation_has_time_operation_params)

    respond_to do |format|
      if @my_timecalculation_has_time_operation.save
        format.html { redirect_to @my_timecalculation_has_time_operation, notice: "My timecalculation has time operation was successfully created." }
        format.json { render :show, status: :created, location: @my_timecalculation_has_time_operation }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @my_timecalculation_has_time_operation.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /my_timecalculation_has_time_operations/1 or /my_timecalculation_has_time_operations/1.json
  def update
    respond_to do |format|
      if @my_timecalculation_has_time_operation.update(my_timecalculation_has_time_operation_params)
        format.html { redirect_to @my_timecalculation_has_time_operation, notice: "My timecalculation has time operation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @my_timecalculation_has_time_operation }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @my_timecalculation_has_time_operation.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /my_timecalculation_has_time_operations/1 or /my_timecalculation_has_time_operations/1.json
  def destroy
    @my_timecalculation_has_time_operation.destroy!

    respond_to do |format|
      format.html { redirect_to my_timecalculation_has_time_operations_path, notice: "My timecalculation has time operation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_timecalculation_has_time_operation
      @my_timecalculation_has_time_operation = MyTimecalculationHasTimeOperation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def my_timecalculation_has_time_operation_params
      params.expect(my_timecalculation_has_time_operation: [ :time_operation_id, :mytimecalculation_id ])
    end
end

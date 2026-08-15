class TimeOperationsController < ApplicationController
  before_action :set_time_operation, only: %i[ timecalculation show edit update destroy ]

  # GET /time_operations or /time_operations.json
  def index
    @time_operations = TimeOperation.all
  end

  # GET /time_operations/1 or /time_operations/1.json
  def timecalculation
    @x=Mytimecalculation.create(mydatetime: params[:hello], time_operation_id: @time_operation.id, resultat: params[:result])
    @hey=eval("DateTime.parse(\"#{params[:hello]}\").#{@time_operation.name}.to_#{params[:result]}") rescue "erreur"
    
  end
  # GET /time_operations/1 or /time_operations/1.json
  def show
  end

  # GET /time_operations/new
  def new
    @time_operation = TimeOperation.new
  end

  # GET /time_operations/1/edit
  def edit
  end

  # POST /time_operations or /time_operations.json
  def create
    @time_operation = TimeOperation.new(time_operation_params)

    respond_to do |format|
      if @time_operation.save
        format.html { redirect_to @time_operation, notice: "Time operation was successfully created." }
        format.json { render :show, status: :created, location: @time_operation }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @time_operation.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /time_operations/1 or /time_operations/1.json
  def update
    respond_to do |format|
      if @time_operation.update(time_operation_params)
        format.html { redirect_to @time_operation, notice: "Time operation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @time_operation }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @time_operation.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /time_operations/1 or /time_operations/1.json
  def destroy
    @time_operation.destroy!

    respond_to do |format|
      format.html { redirect_to time_operations_path, notice: "Time operation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_operation
      @time_operation = TimeOperation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def time_operation_params
      params.expect(time_operation: [ :name, :entree, :resultat, :argument_id ])
    end
end

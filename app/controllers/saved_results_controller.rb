class SavedResultsController < ApplicationController
  before_action :set_saved_result, only: [:show, :edit, :update, :destroy]

  # GET /saved_results
  # GET /saved_results.json
  def index
    @saved_result = SavedResult.last
    @saved_result_json = @saved_result.results[:answers]
    @saved_result_json_o = @saved_result.results[:open_answers]
  end

  # GET /saved_results/1
  # GET /saved_results/1.json
  def show
  end

  # GET /saved_results/new
  def new
    @saved_result = SavedResult.new
  end

  # GET /saved_results/1/edit
  def edit
  end

  # POST /saved_results
  # POST /saved_results.json
  def create
    @saved_result = SavedResult.new(saved_result_params)

    respond_to do |format|
      if @saved_result.save
        format.html { redirect_to @saved_result, notice: 'Saved result was successfully created.' }
        format.json { render :show, status: :created, location: @saved_result }
      else
        format.html { render :new }
        format.json { render json: @saved_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_results/1
  # PATCH/PUT /saved_results/1.json
  def update
    respond_to do |format|
      if @saved_result.update(saved_result_params)
        format.html { redirect_to @saved_result, notice: 'Saved result was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_result }
      else
        format.html { render :edit }
        format.json { render json: @saved_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_results/1
  # DELETE /saved_results/1.json
  def destroy
    @saved_result.destroy
    respond_to do |format|
      format.html { redirect_to saved_results_url, notice: 'Saved result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_result
      @saved_result = SavedResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_result_params
      params.fetch(:saved_result, {})
    end
end

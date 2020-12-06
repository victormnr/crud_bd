class SecretariesController < ApplicationController
  before_action :set_secretary, only: [:show, :edit, :update, :destroy]

  # GET /secretaries
  # GET /secretaries.json
  def index
    @secretaries = Secretary.all
  end

  # GET /secretaries/1
  # GET /secretaries/1.json
  def show
  end

  # GET /secretaries/new
  def new
    @secretary = Secretary.new
  end

  # GET /secretaries/1/edit
  def edit
  end

  # POST /secretaries
  # POST /secretaries.json
  def create
    @secretary = Secretary.new(secretary_params)

    respond_to do |format|
      if @secretary.save
        format.html { redirect_to @secretary, notice: 'Secretary was successfully created.' }
        format.json { render :show, status: :created, location: @secretary }
      else
        format.html { render :new }
        format.json { render json: @secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secretaries/1
  # PATCH/PUT /secretaries/1.json
  def update
    respond_to do |format|
      if @secretary.update(secretary_params)
        format.html { redirect_to @secretary, notice: 'Secretary was successfully updated.' }
        format.json { render :show, status: :ok, location: @secretary }
      else
        format.html { render :edit }
        format.json { render json: @secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secretaries/1
  # DELETE /secretaries/1.json
  def destroy
    @secretary.destroy
    respond_to do |format|
      format.html { redirect_to secretaries_url, notice: 'Secretary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secretary
      @secretary = Secretary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def secretary_params
      params.require(:secretary).permit(:state, :coordinator)
    end
end

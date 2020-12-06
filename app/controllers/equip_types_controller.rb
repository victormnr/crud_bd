class EquipTypesController < ApplicationController
  before_action :set_equip_type, only: [:show, :edit, :update, :destroy]

  # GET /equip_types
  # GET /equip_types.json
  def index
    @equip_types = EquipType.all
  end

  # GET /equip_types/1
  # GET /equip_types/1.json
  def show
  end

  # GET /equip_types/new
  def new
    @equip_type = EquipType.new
  end

  # GET /equip_types/1/edit
  def edit
  end

  # POST /equip_types
  # POST /equip_types.json
  def create
    @equip_type = EquipType.new(equip_type_params)

    respond_to do |format|
      if @equip_type.save
        format.html { redirect_to @equip_type, notice: 'Equip type was successfully created.' }
        format.json { render :show, status: :created, location: @equip_type }
      else
        format.html { render :new }
        format.json { render json: @equip_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equip_types/1
  # PATCH/PUT /equip_types/1.json
  def update
    respond_to do |format|
      if @equip_type.update(equip_type_params)
        format.html { redirect_to @equip_type, notice: 'Equip type was successfully updated.' }
        format.json { render :show, status: :ok, location: @equip_type }
      else
        format.html { render :edit }
        format.json { render json: @equip_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equip_types/1
  # DELETE /equip_types/1.json
  def destroy
    @equip_type.destroy
    respond_to do |format|
      format.html { redirect_to equip_types_url, notice: 'Equip type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equip_type
      @equip_type = EquipType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equip_type_params
      params.require(:equip_type).permit(:description)
    end
end

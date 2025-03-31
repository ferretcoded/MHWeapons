class WeaponTypesController < ApplicationController
  before_action :set_weapon_type, only: %i[ show edit update destroy ]

  # GET /weapon_types or /weapon_types.json
  def index
    @weapon_types = WeaponType.all
  end

  # GET /weapon_types/1 or /weapon_types/1.json
  def show
  end

  # GET /weapon_types/new
  def new
    @weapon_type = WeaponType.new
  end

  # GET /weapon_types/1/edit
  def edit
  end

  # POST /weapon_types or /weapon_types.json
  def create
    @weapon_type = WeaponType.new(weapon_type_params)

    respond_to do |format|
      if @weapon_type.save
        format.html { redirect_to @weapon_type, notice: "Weapon type was successfully created." }
        format.json { render :show, status: :created, location: @weapon_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weapon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_types/1 or /weapon_types/1.json
  def update
    respond_to do |format|
      if @weapon_type.update(weapon_type_params)
        format.html { redirect_to @weapon_type, notice: "Weapon type was successfully updated." }
        format.json { render :show, status: :ok, location: @weapon_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weapon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_types/1 or /weapon_types/1.json
  def destroy
    @weapon_type.destroy!

    respond_to do |format|
      format.html { redirect_to weapon_types_path, status: :see_other, notice: "Weapon type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_type
      @weapon_type = WeaponType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def weapon_type_params
      params.expect(weapon_type: [ :name ])
    end
end

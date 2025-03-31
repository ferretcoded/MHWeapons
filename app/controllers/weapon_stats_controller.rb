class WeaponStatsController < ApplicationController
  before_action :set_weapon_stat, only: %i[ show edit update destroy ]

  # GET /weapon_stats or /weapon_stats.json
  def index
    @weapon_stats = WeaponStat.all
  end

  # GET /weapon_stats/1 or /weapon_stats/1.json
  def show
  end

  # GET /weapon_stats/new
  def new
    @weapon_stat = WeaponStat.new
  end

  # GET /weapon_stats/1/edit
  def edit
  end

  # POST /weapon_stats or /weapon_stats.json
  def create
    @weapon_stat = WeaponStat.new(weapon_stat_params)

    respond_to do |format|
      if @weapon_stat.save
        format.html { redirect_to @weapon_stat, notice: "Weapon stat was successfully created." }
        format.json { render :show, status: :created, location: @weapon_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weapon_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_stats/1 or /weapon_stats/1.json
  def update
    respond_to do |format|
      if @weapon_stat.update(weapon_stat_params)
        format.html { redirect_to @weapon_stat, notice: "Weapon stat was successfully updated." }
        format.json { render :show, status: :ok, location: @weapon_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weapon_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_stats/1 or /weapon_stats/1.json
  def destroy
    @weapon_stat.destroy!

    respond_to do |format|
      format.html { redirect_to weapon_stats_path, status: :see_other, notice: "Weapon stat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_stat
      @weapon_stat = WeaponStat.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def weapon_stat_params
      params.expect(weapon_stat: [ :type_id, :name, :sharpness, :attack, :affinity, :element_type, :element_value, :slot1, :slot2, :slot3, :skills, :rarity ])
    end
end

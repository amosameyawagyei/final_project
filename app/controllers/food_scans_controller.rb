class FoodScansController < ApplicationController
  before_action :set_food_scan, only: %i[ show edit update destroy ]

  # GET /food_scans or /food_scans.json
  def index
    @food_scans = FoodScan.all
  end

  # GET /food_scans/1 or /food_scans/1.json
  def show
  end

  # GET /food_scans/new
  def new
    @food_scan = FoodScan.new
  end

  # GET /food_scans/1/edit
  def edit
  end

  # POST /food_scans or /food_scans.json
  def create
    @food_scan = FoodScan.new(food_scan_params)

    respond_to do |format|
      if @food_scan.save
        format.html { redirect_to @food_scan, notice: "Food scan was successfully created." }
        format.json { render :show, status: :created, location: @food_scan }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @food_scan.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /food_scans/1 or /food_scans/1.json
  def update
    respond_to do |format|
      if @food_scan.update(food_scan_params)
        format.html { redirect_to @food_scan, notice: "Food scan was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @food_scan }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @food_scan.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /food_scans/1 or /food_scans/1.json
  def destroy
    @food_scan.destroy!

    respond_to do |format|
      format.html { redirect_to food_scans_path, notice: "Food scan was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_scan
      @food_scan = FoodScan.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def food_scan_params
      params.expect(food_scan: [ :title, :notes, :food_item_id ])
    end
end

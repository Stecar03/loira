class TappesController < ApplicationController
  before_action :set_tappe, only: %i[ show edit update destroy ]

  # GET /tappes or /tappes.json
  def index
    @tappes = Tappe.all
  end

  # GET /tappes/1 or /tappes/1.json
  def show
  end

  # GET /tappes/new
  def new
    @tappe = Tappe.new
  end

  # GET /tappes/1/edit
  def edit
  end

  # POST /tappes or /tappes.json
  def create
    @tappe = Tappe.new(tappe_params)

    respond_to do |format|
      if @tappe.save
        format.html { redirect_to @tappe, notice: "Tappe was successfully created." }
        format.json { render :show, status: :created, location: @tappe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tappe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tappes/1 or /tappes/1.json
  def update
    respond_to do |format|
      if @tappe.update(tappe_params)
        format.html { redirect_to @tappe, notice: "Tappe was successfully updated." }
        format.json { render :show, status: :ok, location: @tappe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tappe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tappes/1 or /tappes/1.json
  def destroy
    @tappe.destroy
    respond_to do |format|
      format.html { redirect_to tappes_url, notice: "Tappe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tappe
      @tappe = Tappe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tappe_params
      params.require(:tappe).permit(:denominazione, :descita, :descing, :partenza, :orari_partenza, :durata, :partecipanti)
    end
end

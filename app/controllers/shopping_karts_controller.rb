class ShoppingKartsController < ApplicationController
  before_action :set_shopping_kart, only: [:show, :edit, :update, :destroy]

  # GET /shopping_karts
  # GET /shopping_karts.json
  def index
    @shopping_karts = ShoppingKart.all
  end

  # GET /shopping_karts/1
  # GET /shopping_karts/1.json
  def show
  end

  # GET /shopping_karts/new
  def new
    @shopping_kart = ShoppingKart.new
  end

  # GET /shopping_karts/1/edit
  def edit
  end

  # POST /shopping_karts
  # POST /shopping_karts.json
  def create
    @shopping_kart = ShoppingKart.new(shopping_kart_params)

    respond_to do |format|
      if @shopping_kart.save
        format.html { redirect_to @shopping_kart, notice: 'Shopping kart was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_kart }
      else
        format.html { render :new }
        format.json { render json: @shopping_kart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_karts/1
  # PATCH/PUT /shopping_karts/1.json
  def update
    respond_to do |format|
      if @shopping_kart.update(shopping_kart_params)
        format.html { redirect_to @shopping_kart, notice: 'Shopping kart was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_kart }
      else
        format.html { render :edit }
        format.json { render json: @shopping_kart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_karts/1
  # DELETE /shopping_karts/1.json
  def destroy
    @shopping_kart.destroy
    respond_to do |format|
      format.html { redirect_to shopping_karts_url, notice: 'Shopping kart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_kart
      @shopping_kart = ShoppingKart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_kart_params
      params.require(:shopping_kart).permit(:name, foods_attributes:[:id, :item, :_destroy])
    end
end

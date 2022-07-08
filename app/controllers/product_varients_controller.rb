class ProductVarientsController < ApplicationController
  before_action :set_product_varient, only: %i[ show edit update destroy ]

  # GET /product_varients or /product_varients.json
  def index
    @product_varients = ProductVarient.all
  end

  # GET /product_varients/1 or /product_varients/1.json
  def show
  end

  # GET /product_varients/new
  def new
    @product_varient = ProductVarient.new
  end

  # GET /product_varients/1/edit
  def edit
  end

  # POST /product_varients or /product_varients.json
  def create
    @product_varient = ProductVarient.new(product_varient_params)

    respond_to do |format|
      if @product_varient.save
        format.html { redirect_to product_varient_url(@product_varient), notice: "Product varient was successfully created." }
        format.json { render :show, status: :created, location: @product_varient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_varient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_varients/1 or /product_varients/1.json
  def update
    respond_to do |format|
      if @product_varient.update(product_varient_params)
        format.html { redirect_to product_varient_url(@product_varient), notice: "Product varient was successfully updated." }
        format.json { render :show, status: :ok, location: @product_varient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_varient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_varients/1 or /product_varients/1.json
  def destroy
    @product_varient.destroy

    respond_to do |format|
      format.html { redirect_to product_varients_url, notice: "Product varient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_varient
      @product_varient = ProductVarient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_varient_params
      params.require(:product_varient).permit(:color, :size, :product_id)
    end
end

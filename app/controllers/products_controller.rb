class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "products", :products_path

  # GET /products
  # GET /products.json
  def index
    #add_breadcrumb "products", products_path, :title => "Back to the Index"

    if params[:id]
      @products = Product.where(parent_id: params[:id])
    else
      @products = Product.roots
    end   
  end

  # GET /products/1
  # GET /products/1.json
  def show
    add_breadcrumb @product.title, product_path(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export_csv
    @products = Product.all

    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"products.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end 
  end

  def import
    p '======================='
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      Product.import(params[:product])
      redirect_to root_url, notice: "Products imported."
    end
end

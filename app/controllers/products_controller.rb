class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "products", :products_path

  # GET /products
  # GET /products.json
  def index
    #add_breadcrumb "products", products_path, :title => "Back to the Index"

    if params[:id]
      @products = Product.where(parent_id: params[:id]).order(parent_id: :desc)
      current_product = Product.find(params[:id])
      @breadcrumbs_products = []

      # construct crumbs
      add_crumb(current_product)

      # add crumbs to current crumbspath
      @breadcrumbs_products.reverse.each do |product|
        add_breadcrumb product.title, product_nested_path(product.id)
      end
    else
      @products = Product.roots
    end   
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @breadcrumbs_products = []
    current_product = Product.find(params[:id])

    # construct crumbs
    add_crumb(current_product)

    # add crumb to current crumbspath
    @breadcrumbs_products.reverse.each_with_index do |product, index|
      break if index == @breadcrumbs_products.size - 1
      add_breadcrumb product.title, product_nested_path(product.id)
    end

    # add product crumb   
    add_breadcrumb @product.title, product_path(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
    @catalogs = Product.where(is_catalog: true)
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

    def add_crumb(product)
      @breadcrumbs_products.push product
      add_crumb(Product.find(product.parent_id)) if product.parent_id
    end  
end

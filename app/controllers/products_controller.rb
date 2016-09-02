class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:q]
      search_term = params[:q]
      @products = Product.where("name LIKE ?", "%#{search_term}%") if Rails.env.development?
      # Search for the term in PRODUCTION env. using Postgres "ilike"
      @products = Product.where("name ilike ?", "%#{search_term}%") if Rails.env.production?
    else
      @products = Product.all
    end
  end

  def show
    @comments = @product.comments.order("created_at DESC").paginate(:page => params[:page], per_page: 5)
    respond_with(@product)
  end

  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
  end

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

  def update
    #@product.update(product_params)
    #respond_with(@product)
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

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :image_url, :colour, :price)
    end
end

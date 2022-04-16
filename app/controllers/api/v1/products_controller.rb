module Api
    module V1
        class ProductsController < ApplicationController
            protect_from_forgery with: :null_session
            
            def index
                products = Product.all
                render json:products
            end
            def show
                product = Product.find_by(params[:id])

                render json: product
            end
            def create
                product=Product.new(product_params)

                if product.save
                    render json: product
                else
                    render json: {error: product.errors.messages},status: 422
                end
            end
            def update
                product=Product.find(params[:id])

                if product.update(product_params)
                    render json: product
                else
                    render json: {error: product.errors.messages},status: 422
                end
            end
            def destroy
                product=Product.find(params[:id])

                if product.destroy
                    render json: product
                else
                    render json: {error: product.errors.messages},status: 422
                end
            end

            private

            def product_params
                params.require(:product).permit(:name,:image_url, :price)
            end
        end
    end
end
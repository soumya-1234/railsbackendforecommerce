module Api
    module V1
        class CartsController < ApplicationController
            protect_from_forgery with: :null_session

            def index
                carts = Cart.all
                render json:carts
            end
            def show
                product = Cart.find_by(params[:id])

                render json: cart
            end
            def create
                cart= Cart.new(cart_params)

                if cart.save
                    render json: cart
                else
                    render json:{error: cart.error.messages}, status: 422
                end
            end
            def destroy
                cart= Cart.find(params[:id])

                if cart.destroy
                    render json: cart
                else
                    render json:{error: cart.error.messages}, status: 422
                end
            end
            private

            def cart_params
                params.require(:cart).permit(:pname, :pimage, :pprice)
            end
        end
    end
end
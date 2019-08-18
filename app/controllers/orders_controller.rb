class OrdersController < ApplicationController

    def create
        order = Order.new(order_params)
        if order.save
            render json: order
        else
            render json: {error: "Cannot create order. Please try again."}
        end
    end

    private

    def order_params
        params.require(:order).permit(:user_id, :status, :subtotal, :tips, :tax, :restaurant_id)
    end
end

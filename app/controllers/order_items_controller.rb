class OrderItemsController < ApplicationController

    def create
        order_item = OrderItem.new(order_item_params)
        if order_item.save
            render json: order_item
        else
            render json: {errors: "Cannot create order. Please try again."}
        end
    end


    private

    def order_item_params
    params.require(:order_item).permit(:order_id, :item_id, :quantity)
    end
end

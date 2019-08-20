class OrderItemsController < ApplicationController

    def create
        order_item = OrderItem.new(order_item_params)
        if order_item.save
            render json: order_item
        else
            render json: {errors: "Cannot create order. Please try again."}
        end
    end

    def show
        order_item = OrderItem.find(params[:id])
        if order_item
            render json: order_item
        end
    end


    private

    def order_item_params
    params.require(:order_item).permit(:order_id, :item_id, :quantity)
    end
end

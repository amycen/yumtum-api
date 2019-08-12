class OrderItemController < ApplicationController


    private

    def order_item_params
    params.require(:order_item).permit(:order_id, :item_id, :quantity)
    end
end

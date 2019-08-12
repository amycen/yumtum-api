class OrdersController < ApplicationController

    def create
        order = Order.new(
            user_id: params[:user_id],
            status: params[:status],
            subtotal: params[:subtotal],
            tips: params[:tips],
            tax: params[:tax]
        )
        if order.save
            render json: order
        else
            render json: {error: "Cannot create order. Please try again."}
        end
    end

    private

#    def order_params
 #       params.require(:order).permit(:user_id, :status, :subtotal, :tips, :tax)
  #  end
end

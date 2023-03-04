module Api
  module V1
    class OrdersController < ApplicationController
      def create
        @order = Order.new(order_params)

        if @order.save
          render json: @order, status: :created
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end

      private

      def order_params
        params.require(:order).permit(:pharmacy_id, :laboratory_id, :product_id, :quantity, :price)
      end
    end
  end
end

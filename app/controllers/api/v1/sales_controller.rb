module Api
  module V1
    class SalesController < ApplicationController
      def create
        @sale = Sale.new(sale_params)

        if @sale.save
          render json: @sale, status: :created
        else
          render json: @sale.errors, status: :unprocessable_entity
        end
      end

      private

      def sale_params
        params.require(:sale).permit(:pharmacy_id, :pharmacy_product_id, :quantity, :price)
      end
    end
  end
end

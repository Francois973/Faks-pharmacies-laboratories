module Api
  module V1
    class ProductsController < ApplicationController
      def show
        @classment_products = Product.most_profiable_products(params[:id])
        render json: @classment_products
      end
    end
  end
end

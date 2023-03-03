module Api
  module V1
    class PharmaciesController < ApplicationController
      def show
        @pharmacies_city = Pharmacy.by_city(params[:city])
        render json: @pharmacies_city
      end
    end
  end
end

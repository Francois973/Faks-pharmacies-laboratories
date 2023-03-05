module Api
  module V1
    class LaboratoriesController < ApplicationController
      before_action :set_laboratory, only: %i[city_classment pharmacy_classment]

      def index
        @laboratories = Laboratory.all
        render json: @laboratories
      end

      def city_classment
        @classment = @laboratory.most_succes_city_from_laboratory
        render json: @classment
      end

      def pharmacy_classment
        pharmacies = @laboratory.most_succes_pharmacy_from_laboratory
        render json: pharmacies, each_serializer: PharmacySerializer
      end

      private

      def set_laboratory
        @laboratory = Laboratory.find(params[:id])
      end
    end
  end
end

module Api
  module V1
    class LaboratoriesController < ApplicationController
      def index
        @laboratories = Laboratory.all
        render json: @laboratories
      end

      def city_classment
        @laboratory = Laboratory.find(params[:id])
        @classment = @laboratory.most_succes_city_from_laboratory
        render json: @classment
      end
    end
  end
end

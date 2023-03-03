module Api
  module V1
    class LaboratoriesController < ApplicationController
      def index
        @laboratories = Laboratory.all
        ap @laboratories
        render json: @laboratories
      end
    end
  end
end

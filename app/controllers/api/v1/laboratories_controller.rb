module Api
  module V1
    class LaboratoriesController < ApplicationController
      def index
        @laboratories = Laboratory.all
        render json: @laboratories
      end
    end
  end
end

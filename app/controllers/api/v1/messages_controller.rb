module Api
  module V1
    # Handles API requests for messages
    class MessagesController < ApplicationController
      def index
        @message = Message.all.order('RANDOM()').first
        render json: @message, status: :ok
      end
    end
  end
end

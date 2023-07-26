module Api
    module V1
      # Handles API requests for messages
      class MessagesController < ApplicationController
        def index
          @messages = Message.all
          render json: @messages, status: :ok
        end
  

      end
    end
  end
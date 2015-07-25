module Platform
  class Messages < Grape::API
    resource :messages do
      params do
        requires :message, type: Hash
      end

      post do
        @layer.send_message(@conversation_id, params[:message])
      end
    end
  end
end

module Platform
  class Conversations < Grape::API
    resource :conversations do
      params do
        requires :conversation, type: Hash
      end

      post do
        @layer.create_conversation(params[:conversation])
      end

      route_param :id do
        before do
          @conversation_id = params[:id]
        end

        get do
          @layer.get_conversation(@conversation_id)
        end

        params do
          requires :operations, type: Array
        end

        patch do
          @layer.edit_conversation(@conversation_id, params[:operations])
        end

        mount Messages
      end
    end
  end
end

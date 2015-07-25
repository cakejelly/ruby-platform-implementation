module Platform
  class Users < Grape::API
    resource :users do
      route_param :user_id do
        before do
          @user_id = params[:user_id]
        end
        
        resource :blocks do
          get do
            @layer.get_blocklist(@user_id)
          end

          params do
            requires :blocked_id, type: String,
              desc: "The user id who you want to block"
          end

          post do
            @layer.block_user(@user_id, params[:blocked_id])
          end

          delete ':blocked_id' do
            @layer.unblock_user(@user_id, params[:blocked_id])
          end
        end
      end
    end
  end
end

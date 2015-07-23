module Platform
  class Announcements < Grape::API
    resource :announcements do
      params do
        requires :announcement, type: Hash
      end

      post do
        @layer.send_announcement(params[:announcement])
      end
    end
  end
end

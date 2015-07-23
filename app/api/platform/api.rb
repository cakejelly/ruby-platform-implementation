module Platform
    class Api < Grape::API
      format :json
      get do
        {message:'gello'}
      end
      mount Announcements
    end
end

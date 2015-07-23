module Platform
  class Announcements < Grape::API
    namespace :announcements do
      get do
        { message: 'hello' }
      end
    end
  end
end

module Platform
  class Api < Grape::API
    format :json

    # Rescue any raised Layer Api errors
    rescue_from Layer::Api::Error do |e|
      rack_response(
        { 'error' => "#{e.response.body}" }.to_json, e.response.status
      )
    end

    before do
      @layer ||= Layer::Api::Client.new
    end

    mount Announcements
    mount Conversations
  end
end

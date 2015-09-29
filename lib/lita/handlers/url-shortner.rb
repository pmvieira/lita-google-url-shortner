module Lita
  module Handlers
    class UrlShortner < Handler
      route(/^shorten\(.+)/i /, :lookup, command: true, help: {
        "shorten URL => returns a shorten url"

      })

      G_API_KEY = ENV["G_API_KEY"]  
      
      def show_url(response)
        headers = {"Content-Type"=>"application/json"}
        url = response.matches[0][0]
        url = { :longUrl => "#{url}"}.to_json
        short_url = generate_url(url) unless short_url
        response.reply_privately "Here's your short url: #{short_url}"
      end

      private

      def generate_url(url)
        
        resp = HTTParty.post("https://www.googleapis.com/urlshortener/v1/url?key=#{G_API_KEY}", :body => url, :headers => headers ).to_json
        resp = JSON.parse(resp)
        short_url = resp["id"]
        short_url
      end
    end

    Lita.register_handler(UrlShortner)
  end
end
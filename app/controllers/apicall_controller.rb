class ApicallController < ApplicationController

  require 'net/http'
  require 'json'

  def index

    @hello_message = "Welcome to JRuby on Rails on the Sun GlassFish Enterprise Server"




    uri = URI('http://localhost:3000/api/v1/users')
    res = Net::HTTP.get_response(uri)

    # Headers
    res['Set-Cookie']            # => String
    res.get_fields('set-cookie') # => Array
    res.to_hash['set-cookie']    # => Array
    puts "Headers: #{res.to_hash.inspect}"

    # Status
    puts res.code       # => '200'
    puts res.message    # => 'OK'
    puts res.class.name # => 'HTTPOK'

    # Body
    #puts res.body 

    @body = JSON.parse(res.body)
    @size = @body.size




  end

  def hello

      id = params[:id]
      puts "HELLLLLLO#{id}"
      abc = "http://localhost:3000/api/v1/users/#{id}"
      uri = URI(abc)
      http = Net::HTTP.new(uri.host, uri.port)
      req = Net::HTTP::Delete.new(uri.path)
      res = http.request(req)
      puts "deleted #{res}"

      redirect_to  apicall_index_path
      
  end


  private 
def params_user
  params.require(:user).permit(:id)
end
end

class UpdatedetailController < ApplicationController
require 'net/http'

require 'httparty'
  
  def update

    
    
# . 

  end

  def postingtoupdate
      id = params[:id]

    abc = "http://localhost:3000/api/v1/users/#{id}"
    response = HTTParty.get(abc)

    
    response.code
      # 200
    username = response["username"]
    password = response["password"]
    debugger
  end


 private 
    def params_user
      params.require(:user).permit(:id)
    end
end

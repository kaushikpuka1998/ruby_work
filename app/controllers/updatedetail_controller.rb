class UpdatedetailController < ApplicationController
require 'net/http'

require 'httparty'
  
  def update

    
    
    id = params["ID"]
    username = params["Username"]
    password = params["Password"]
    #params = { username: username,password:params[:username]}
    #@options = {params: params}
  
    url = "http://localhost:3000/api/v1/users/#{id}?username=#{username}&password=#{password}"
    res =HTTParty.patch(url)


    
    
    


  
    
 

  end

  def postingtoupdate
      id = params[:id]
      

    abc = "http://localhost:3000/api/v1/users/#{id}"
    response = HTTParty.get(abc)

    
    response.code
    username = response["username"]
    password = response["password"]

  end


 private 
    def params_user
      params.require(:user).permit(:id,:username,:password)
    end
end

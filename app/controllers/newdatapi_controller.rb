class NewdatapiController < ApplicationController

  
  
  def create
    
    debugger
    username= params[:Username]
    #pass = params_user[:password]
    uri = URI('http://localhost:3000/api/v1/users')
    res = Net::HTTP.post_form(uri,username: username,password: params[:Password])
    #puts data.body

  end


  private
  def params_user
    params.permit(:username,:password)
  end
end

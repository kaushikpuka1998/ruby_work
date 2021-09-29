class Apiinsert < ApplicationRecord


    def create
        
    end


    private 

   def params_user
        params.require(:user).permit(:username , :password)
   end
end

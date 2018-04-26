class GameController < ApplicationController
  def try
    #session[:name] = params[:name] unless params[:name].nil?

    secretnumber = rand(100)
    cookies[:secretnumber] = secretnumber unless !cookies[:secretnumber].nil?
    #if @count < @counter + 1
    #  @count + 1

    # end
   if params[:guess].to_i == cookies[:secretnumber].to_i
     #@counter++1
     @result_string = "Winner winner chicken dinner "
   elsif params[:guess].to_i > cookies[:secretnumber].to_i
     #@counter++1
     @result_string = "Low you loser"
  else params[:guess].to_i < cookies[:secretnumber].to_i
   #@counter++1
    @result_string = "Bah you lose, its high"

  end

#
#
#  if params[:guess].to_i > cookies[:guess].to.i
#
#
#   @result_string = "high"
# end
    render "try.html.erb"
  end
end

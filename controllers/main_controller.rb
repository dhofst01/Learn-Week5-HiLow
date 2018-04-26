class MainController < ApplicationController
  def answers
    cookies[:name] = params[:name] unless params[:name].nil?
    render "answers.html.erb"
  end
end

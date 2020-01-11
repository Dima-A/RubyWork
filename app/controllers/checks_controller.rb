class ChecksController < ApplicationController
  protect_from_forgery :except => [:method, :text]
  def index
    if check_params
	  return
	end
    if params[:method] == "palindrome"
      @data = params[:text].palindrome?
    elsif params[:method] == "brackets"
      @data = params[:text].valid_brackets?
    end
  end
  
  private def check_params
    params[:method].blank? || params[:text].blank?
  end
end
# class ChecksController < ApplicationController
#   protect_from_forgery :except => [:method, :text]
#   def index
#     if params[:method] == "palindrome"
#       @data = params[:text].palindrome?
#     elsif params[:method] == "brackets"
#       @data = params[:text].valid_brackets?
#     end
#   end
# end

class ChecksController < ApplicationController
  protect_from_forgery :except => [:method, :text]
  def index
    case params[:method]
      when "palindrome"
        params[:result] = params[:text].palindrome?
      when "brackets"
        params[:result] = params[:text].valid_brackets?
    end
    case params[:result]
      when true
        params[:result] = "да"
      when false
        params[:result] =  "нет"
    end
  end
end
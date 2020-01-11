class ChecksController < ApplicationController
  protect_from_forgery :except => [:method, :text]
  def index
    if params[:method] == "palindrome"
      @data = params[:text].palindrome?
    elsif params[:method] == "brackets"
      @data = params[:text].valid_brackets?
    end
  end
end
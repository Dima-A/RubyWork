class ChecksController < ApplicationController
  protect_from_forgery :except => [:method, :text]
  def index
    @data = Check.all
  end
  def create
    @data = Check.new(data_params)
    @data[:result] = case @data[:method]
                     when "palindrome"
                       @data[:text].palindrome?
                     when "brackets"
                       @data[:text].valid_brackets?
                     end
    @data.save
  end

  private
    def data_params
      params.permit(:method, :text)
    end
end
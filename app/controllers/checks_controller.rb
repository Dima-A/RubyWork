class ChecksController < ApplicationController
  protect_from_forgery :except => [:method, :text]
  def index
    @data = Check.all
  end
  def new
    @data = Check.new(data_params)
    case @data[:method]
      when "palindrome"
        @data[:result] = @data[:text].palindrome?
      when "brackets"
        @data[:result] = @data[:text].valid_brackets?
    end
    @data.save
  end

  private
    def data_params
      params.permit(:method, :text)
    end
end
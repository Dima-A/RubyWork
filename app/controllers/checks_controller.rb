class ChecksController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :user_not_unauthorized

  def index
    @data = @current_user.checks
  end

  def create
    @data = Check.new(data_params)
    @data[:result] = case @data[:method]
                     when "palindrome"
                       @data[:text].palindrome?
                     when "brackets"
                       @data[:text].valid_brackets?
                     end
    @data[:user_id] = @current_user.id
    @data.save
  end

  private
    def data_params
      params.permit(:method, :text, :token)
    end
	
end
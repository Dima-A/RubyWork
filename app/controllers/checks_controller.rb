class ChecksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    check_user_unauthorized
    @data = Check.all
  end

  def create
    check_user_unauthorized
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
      params.permit(:method, :text, :token)
    end
    def check_user_unauthorized
      if !current_user
        render "shared/unauthorized"
      end
    end
end
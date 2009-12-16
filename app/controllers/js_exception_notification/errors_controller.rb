module JsExceptionNotification
  class ErrorsController < ApplicationController  
    def create
      # message
      em = ErrorMessage.new(params[:name], params[:message])
      em.log!
      render :text => "Thank you very much..."
    end
  end
end
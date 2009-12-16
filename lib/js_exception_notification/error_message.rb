module JsExceptionNotification
  class ErrorMessage
  
    attr_reader :name, :message
    def initialize(name, msg)
      @name    = name
      @message = msg
    end
  
    def log!
      # "[#{Time.now.to_s(:db)}] #{em.name}: #{em.message}"
    end
  end
end
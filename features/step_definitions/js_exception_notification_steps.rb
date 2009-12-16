Given /^an empty logfile exists$/ do
  `echo "" > #{logfile}`
end

When /^I submit an error message "([^\"]*)"$/ do |message_text|
  @mock = JsExceptionNotification::ErrorMessage.new("Some Name", message_text)
  JsExceptionNotification::ErrorMessage.stubs(:new).returns(@mock)
  @mock.expects(:log!)

  visit create_error_path, :post, {:message => message_text, :name => "Some Name" }
  assert_response :success
end

Then /^a log message should be written$/ do
  # nothing...
end

def logfile
  "log/#{RAILS_ENV}.log"
end
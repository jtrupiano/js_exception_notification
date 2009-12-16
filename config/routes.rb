ActionController::Routing::Routes.draw do |map|
  map.create_error '/errors', :controller => 'js_exception_notification/errors', :action => 'create', :method => :post
end
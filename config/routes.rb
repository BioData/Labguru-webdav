Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount DAV4Rack::Handler.new(
  :root => Rails.root.to_s + "/public/webdav",
  :root_uri_path => '/public'#,
  #:resource_class => ::DAV4Rack::FileResource
), at: '/'#, :at => '/', :constraints => {:subdomain => "webdav"}

end

OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '363964063621.apps.googleusercontent.com', 'sEeEnL9onfRsCxdGzivPF_px', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
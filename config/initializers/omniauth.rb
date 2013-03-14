OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '440246749395897', '131b06c18b51b3826ba0c4ddf6341e3b'
end
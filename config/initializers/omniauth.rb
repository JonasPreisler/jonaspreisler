require 'omniauth-facebook'
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '2135727919772762', 'c335742dffd5175af1d0f4a4c202b3d0'
end
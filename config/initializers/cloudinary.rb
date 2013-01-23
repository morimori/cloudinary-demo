Cloudinary.config do |config|
  config.cloud_name    = Options.cloudinary.cloud_name
  config.api_key       = Options.cloudinary.api_key
  config.api_secret    = Options.cloudinary.api_secret
  config.cdn_subdomain = true
end

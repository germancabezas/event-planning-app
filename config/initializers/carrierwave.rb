CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['S3_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['S3_SECRET_ACCESS_KEY'],
    :region                 => 'us-west-2',
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME']
  puts config.fog_credentials
  # config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end
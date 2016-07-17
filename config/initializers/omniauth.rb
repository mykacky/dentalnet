Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['159872111093279'], ENV['42658475fa47f900a9d79c758b2b04f5']
end
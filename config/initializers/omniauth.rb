Rails.application.config.middleware.use OmniAuth::Builder do
	provider :google_outh2, ENV['GOOGLE_APP_ID'], ENV['GOOGLE_APP_SECRET'],
	{
      scope: 'userinfo.email, userinfo.profile',
      prompt: 'select_account'
    }
end
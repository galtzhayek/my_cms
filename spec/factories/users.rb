# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
	## names
	user_name  		"john.snow"
	first_name  		"john"
	last_name  		"snow"
	company_name  		"microcomps"
	password  		"mypass123"
	password_confirmation  	"mypass123"
	## contact info
	email  			"example@domain.com"
	phone  			"091234567"
	phone_mobile  		"0501234567"
	website_personal  	"http://domain.me"
	website_company  	"http://domain.com"
	## images
	personal_image		"http://domain.me/file.jpg"
	company_image  		"http://domain.com/logo.jpg"
	## details
	approach 		"postmodernistic"
	education  		"M.B.A"
	experience  		"3 years"
	achivements  		"5 points!"
	more_info  		"just more info"
	
  end
end

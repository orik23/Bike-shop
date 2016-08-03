class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_form(email, name, message)
  	@message = message
  	mail(:from => email, 
	  		:to => 'martafarre@posteo.net', 
	  		:subject => "A new contact form message from #{@name}")
  end


end

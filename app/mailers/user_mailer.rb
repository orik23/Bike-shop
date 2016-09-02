class UserMailer < ActionMailer::Base
  default from: "martafarre@posteo.net"
  
  def contact_form(email, name, message)
    @message = message
    mail( :from => email,
          :to => 'martafarre@posteo.net',
          :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Biking Around Berlin"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def purchase_thank_you(user)
    mail( :to => user.email,
          :subject => "Thank you for your purchase!")
  end

end
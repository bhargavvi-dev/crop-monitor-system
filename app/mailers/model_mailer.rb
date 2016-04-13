class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification123
    @greeting = "Hi"

    mail to: "bhargavp.sheltersoft@gmail.com"
  end

  def MinT(farmer)
  	@MinTemo = "Temperature is Low"
    @farmer = farmer
    mail(to: @farmer.email, subject: 'Temp Low')
  end
  def MaxT(farmer)
  	@MaxTemp = "Temperature is High"
    @farmer = farmer
    mail(to: @farmer.email, subject: 'Temp High')
  end
end

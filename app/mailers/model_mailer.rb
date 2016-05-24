class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def MinT(farmer)
  	@MinTemp = "Temperature is Low"
    @farmer = farmer
    mail(to: @farmer.email, subject: 'Temp Low')
  end
  def MaxT(farmer)
  	@MaxTemp = "Temperature is High"
    @farmer = farmer
    mail(to: @farmer.email, subject: 'Temp High')
  end
  def MinH(farmer)
    @MinHumi = "Humidity is Low"
    @farmer = farmer
    mail(to: @farmer.email, subject: 'Humidity Low')
  end
  def MaxH(farmer)
    @MaxHumi = "Humidity is High"
    @farmer = farmer
    mail(to: @farmer.email, subject: 'Humidity High')
  end
end

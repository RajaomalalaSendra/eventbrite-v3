class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@zanfoana.com'
 
  def welcome_email(event)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @event = event

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://zanfoana.com/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @event.title, subject: 'Notre event pour aujourd hui !') 
  end
end

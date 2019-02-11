class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@zanfoana.com'
 
  def welcome_email(attend)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @attend = attend
    @user_for = User.find(@attend.user_id)

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url_for  = 'http://zanfoana.com/event' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user_for.email, subject: 'Notre event pour aujourd hui !') 
  end
end

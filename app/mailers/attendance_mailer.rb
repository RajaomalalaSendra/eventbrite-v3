class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@zanfoana.com'
 
  def welcome_email(attendant)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @attendant = attendant 
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://zanfoana.com/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.find(@attendant.user_id).email, subject: 'Bienvenue chez nous !') 
  end
end

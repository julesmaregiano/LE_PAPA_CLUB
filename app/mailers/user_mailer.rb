class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    mail(to: user.email, subject: "Tu as fait le choix de te comporter en homme.")
  end

  def email_changed(user)
    mail(to: user.email, subject: "Le Club des Darons - Changement d'email.")
  end

  def password_change(user)
    mail(to: user.email, subject: "Le Club des Darons - Changement de password.")
  end

  def reset_password_instructions(user)
    mail(to: user.email, subject: "Le Club des Darons - Nouveau password.")
  end

  def unlock_instructions(user)
    mail(to: user.email, subject: "Le Club des Darons - Trop de connexions.")
  end

end

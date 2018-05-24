class ExampleMailer < ApplicationMailer
  default from: "nowekgame@gmail.com"

  def sample_email(responsable_etablissement)
    @responsable_etablissement = responsable_etablissement
    mail(to: @responsable_etablissement.mail, subject: 'Sample Email')
  end
end

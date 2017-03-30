module Spina
  class ContactFormMailer < ActionMailer::Base
    default from: Rails.application.secrets
    layout 'mailers/spina_contact_form'

    def send_form(email_content)
      @email_content = email_content
      mail(to: 'adam@adamcooper.de', subject: 'From your Contact Form')
    end
  end
end

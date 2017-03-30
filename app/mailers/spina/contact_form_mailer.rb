module Spina
  class ContactFormMailer < ActionMailer::Base
    default from: Rails.application.secrets.contact_form_from_email
    layout 'mailers/spina_contact_form'

    def send_form(email_content, email_address)
      @email_content = email_content
      mail(to: email_address, subject: 'From your Contact Form')
    end
  end
end

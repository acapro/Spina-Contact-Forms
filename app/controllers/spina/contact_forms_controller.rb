module Spina
  class ContactFormsController < ApplicationController

    def create
      @email_content = params.permit!.except(:utf8, :controller, :action)
      Spina::ContactFormMailer.send_form(@email_content, current_account.email).deliver_now
    end
  end
end

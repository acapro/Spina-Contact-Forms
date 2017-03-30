module Spina
  module Admin
    class ContactFormsController < AdminController
      layout 'spina/admin/admin'

      before_action :set_breadcrumb

      def index
        @contact_form_element = ContactFormElement.new
        @contact_form_elements = ContactFormElement.all
      end

      private

      def set_breadcrumb
        add_breadcrumb t('plugins.ContactForm'), admin_contact_forms_path
      end
    end
  end
end

module Spina
  module Admin
    class ContactFormsController < AdminController
      layout 'spina/admin/admin'

      before_action :set_breadcrumb

      def index
        @contact_form_element = ContactFormElement.new
        @contact_form_elements = ContactFormElement.by_theme(current_theme)
      end

      private

      def set_breadcrumb
        add_breadcrumb t('contact_form.menu_title'), admin_contact_forms_path
      end
    end
  end
end

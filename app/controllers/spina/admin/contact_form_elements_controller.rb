module Spina
  module Admin
    class ContactFormElementsController < AdminController
      layout 'spina/admin/admin'

      def error
      end

      def create
        @contact_form_element = ContactFormElement.new(contact_form_element_params)
        respond_to do |format|
          if @contact_form_element.save
            format.html {redirect_to admin_contact_forms_path, notice: 'Form Element was successfully created.'}
            format.js
          else
            render :error
          end
        end
      end

      def update
      end

      def destroy
      end

      private

      def contact_form_element_params
        params.require(:contact_form_element).permit(:label, :required, :input_type)
      end

    end
  end
end

module Spina
  module Admin
    class ContactFormElementsController < AdminController
      layout 'spina/admin/admin'
      before_action :set_element, only: [:edit, :update, :destroy]

      def error
      end

      def create
        @contact_form_element = ContactFormElement.new(contact_form_element_params)
        @contact_form_element.theme = current_theme.name
        @contact_form_element.position = Time.now.to_i

        respond_to do |format|
          if @contact_form_element.save
            format.html {redirect_to admin_contact_forms_path, notice: 'Form Element was successfully created.'}
            format.js
          else
            render :error
          end
        end
      end

      def sort
        params[:list].each_pair do |parent_pos, parent_node|
          ContactFormElement.find(parent_node[:id]).update(position: parent_pos)
        end
        head :ok
      end

      def update
        if @contact_form_element.update_attributes(contact_form_element_params)
          redirect_to admin_contact_forms_path, notice: 'Form element updated.'
        else
          render :error
        end
      end

      def destroy
        @contact_form_element.destroy
        redirect_to admin_contact_forms_path, notice: 'Form element deleted.'
      end

      private

      def contact_form_element_params
        params.require(:contact_form_element).permit(:label, :required, :input_type)
      end

      def set_element
        @contact_form_element = ContactFormElement.find(params[:id])
      end

    end
  end
end

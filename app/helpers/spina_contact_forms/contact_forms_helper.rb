module SpinaContactForms
  module ContactFormsHelper
    def spina_contact_form
      @contact_form_elements = Spina::ContactFormElement.all
      render :partial => 'spina/contact_forms/page', locals: {contact_form_elements: @contact_form_elements.sorted }
    end

    def spina_contact_form_input(name, type)
      if type == 'text_field'
        text_field_tag name.parameterize
      elsif type == 'text_area'
        text_area_tag name.parameterize
      end
    end
  end
end

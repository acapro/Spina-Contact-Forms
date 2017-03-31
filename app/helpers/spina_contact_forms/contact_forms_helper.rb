module SpinaContactForms
  module ContactFormsHelper
    def spina_contact_form
      render :partial => 'spina/contact_forms/page'
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

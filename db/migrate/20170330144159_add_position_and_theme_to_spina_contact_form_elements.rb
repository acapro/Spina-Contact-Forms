class AddPositionAndThemeToSpinaContactFormElements < ActiveRecord::Migration[5.0]
  def change
    add_column :spina_contact_form_elements, :theme, :string
    add_column :spina_contact_form_elements, :position, :integer
  end
end

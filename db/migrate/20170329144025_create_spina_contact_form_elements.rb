class CreateSpinaContactFormElements < ActiveRecord::Migration[5.0]
  def change
    create_table :spina_contact_form_elements do |t|
      t.string :label
      t.boolean :required
      t.integer :input_type

      t.timestamps
    end
  end
end

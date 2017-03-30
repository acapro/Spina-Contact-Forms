# Database Entries
# :label          ->  String
# :required       ->  Boolean
# :input_type     ->  Integer


class Spina::ContactFormElement < ApplicationRecord
  enum input_type: [:text_field, :text_area]

  def required?
    self.required
  end
end

# Database Entries
# :label          ->  String
# :required       ->  Boolean
# :input_type     ->  Integer


class Spina::ContactFormElement < ApplicationRecord
  enum input_type: [:text_field, :text_area]

  scope :sorted, -> { order('position') }
  scope :by_theme, ->(theme) { where(theme: theme.name)}

  def required?
    self.required
  end
end

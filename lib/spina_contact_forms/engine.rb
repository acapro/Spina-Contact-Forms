module SpinaContactForms
  class Engine < ::Rails::Engine
    initializer 'spina.plugin.register.events', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name       = 'ContactForm'
        plugin.namespace  = 'contact_forms'
      end
    end
    initializer 'spina.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper SpinaContactForms::ContactFormsHelper
      end
    end
  end
end

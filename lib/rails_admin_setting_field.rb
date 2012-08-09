require "rails_admin_setting_field/engine"

module RailsAdminSettingField
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class SettingField < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option(:config) do
            {}
          end

          register_instance_option(:partial) do
            :form_setting_field
          end

          register_instance_option(:formatted_value) do
            "#{real_value}"
          end

          register_instance_option(:help) do
            value_class
          end
          
          register_instance_option(:default_value) do
            Settings.defaults[bindings[:object].var.to_s]
          end
          
          register_instance_option(:real_value) do
            Settings[bindings[:object].var.to_s]
          end

          register_instance_option(:value_class) do
            real_value.class
          end
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :setting_field
    fields << RailsAdmin::Config::Fields::Types::SettingField.new(parent, properties[:name], properties)
    true
  else
    false
  end
end



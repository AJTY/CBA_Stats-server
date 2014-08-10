class PhorumSetting < ActiveRecord::Base

    self.primary_key = :name
    self.inheritance_column = :ruby_type
end

class Counter < ActiveRecord::Base
    self.table_name = 'counter'

    self.inheritance_column = :ruby_type
end

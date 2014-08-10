class Message < ActiveRecord::Base
    self.table_name = 'message'
    self.primary_key = :mesid

end

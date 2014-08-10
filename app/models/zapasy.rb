class Zapasy < ActiveRecord::Base
    self.table_name = 'zapasy'
    self.primary_key = :zid

end

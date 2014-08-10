class Ephem < ActiveRecord::Base
    self.table_name = 'ephem'
    self.primary_key = :eid

end

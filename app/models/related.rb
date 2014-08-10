class Related < ActiveRecord::Base
    self.table_name = 'related'
    self.primary_key = :rid

end

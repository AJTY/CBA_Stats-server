class Zapisovatele < ActiveRecord::Base
    self.table_name = 'zapisovatele'
    self.primary_key = :zap_id

end

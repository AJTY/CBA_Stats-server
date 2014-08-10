class LigaZapisovatele < ActiveRecord::Base
    self.table_name = 'liga_zapisovatele'
    self.primary_key = :lon_id

end

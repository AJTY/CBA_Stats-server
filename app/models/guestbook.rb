class Guestbook < ActiveRecord::Base
    self.table_name = 'guestbook'
    self.primary_key = :id_msg

end

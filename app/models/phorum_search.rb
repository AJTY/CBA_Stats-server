class PhorumSearch < ActiveRecord::Base
    self.table_name = 'phorum_search'
    self.primary_key = :message_id

end

class Queue < ActiveRecord::Base
    self.table_name = 'queue'
    self.primary_key = :qid

end

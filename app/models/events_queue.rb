class EventsQueue < ActiveRecord::Base
    self.table_name = 'events_queue'
    self.primary_key = :qid

end

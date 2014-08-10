class CounterDay < ActiveRecord::Base
    self.table_name = 'counter_day'
    self.primary_key = :date

end

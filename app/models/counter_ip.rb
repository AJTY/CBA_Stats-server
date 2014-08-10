class CounterIp < ActiveRecord::Base
    self.table_name = 'counter_ip'
    self.primary_key = :ip

end

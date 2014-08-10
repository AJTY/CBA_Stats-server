class ZapasyAkce < ActiveRecord::Base
    self.table_name = 'zapasy_akce'
    self.primary_key = :zaid

end

class PhorumPmXref < ActiveRecord::Base
    self.table_name = 'phorum_pm_xref'
    self.primary_key = :pm_xref_id

end

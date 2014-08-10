class UsersStatus < ActiveRecord::Base
    self.table_name = 'users_status'
    self.primary_key = :uid

end

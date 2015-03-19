class Sealion < ActiveRecord::Base
  # Remember to create a migration!
  validates :first_name, {:presence => true}
  validates :last_name, {:presence => true}
end

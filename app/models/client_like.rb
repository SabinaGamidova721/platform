<<<<<<< HEAD
class ClientLike < ApplicationRecord
  belongs_to :client_profile
  belongs_to :service

  def self.ransackable_attributes(auth_object = nil)
    ["client_profile_id", "created_at", "id", "id_value", "service_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["client_profile", "service"]
  end
end
=======
class ClientLike < ApplicationRecord
  belongs_to :client_profile
  belongs_to :service

  def self.ransackable_attributes(auth_object = nil)
    ["client_profile_id", "created_at", "id", "id_value", "service_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["client_profile", "service"]
  end
end
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb

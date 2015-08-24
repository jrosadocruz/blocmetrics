class User < ActiveRecord::Base
  has_many :registered_applications
end

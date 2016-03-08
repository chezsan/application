class User < ActiveRecord::Base
  belongs_to :group
  belongs_to :company
  has_many :roles
end

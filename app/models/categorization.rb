class Categorization < ActiveRecord::Base
  belongs_to :level
  belongs_to :user
end
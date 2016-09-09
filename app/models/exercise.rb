class Exercise < ActiveRecord::Base
  has_many :routines, dependent: :destroy
end

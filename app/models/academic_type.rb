class AcademicType < ApplicationRecord
  has_many :streams
  has_many :users
end

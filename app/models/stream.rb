class Stream < ApplicationRecord
  belongs_to :academic_type
  has_many :subjects, through: :stream_subject
  has_many :subjects
  has_many :users
end

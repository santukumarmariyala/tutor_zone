class Subject < ApplicationRecord
  has_many :streams
  has_many :streams, through: :stream_subjects

  
end

class StreamSubject < ApplicationRecord
  belongs_to :stream
  belongs_to :subject
  enum year: { First_year:"First_year", Second_year:"Second_year", Third_year:"Third_year", Fourth_year:"Fourth_year" }
end

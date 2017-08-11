class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def self.search(search)
  where("abbreviation LIKE ? ", "%#{search}%")
  end
end

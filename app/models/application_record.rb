class ApplicationRecord < ActiveRecord::Base
    paginates_per 50
  self.abstract_class = true
end

class Employee < ApplicationRecord
  # has_many :experiences, dependent: :destroy
  paginates_per 10
end

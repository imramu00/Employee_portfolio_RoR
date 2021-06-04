class Employee < ApplicationRecord
  # has_many :experiences, dependent: :destroy
  paginates_per 10
  has_many :experiences, foreign_key: :emp_id, primary_key: :emp_id, dependent: :destroy
end

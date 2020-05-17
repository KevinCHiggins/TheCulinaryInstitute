class CourseModule < ApplicationRecord
    has_many :students 
    validates_each :name, :description, :credits do |record, attr, value|
    if value.to_s.length < 1
      record.errors.add attr, 'is empty'
    end
    validates :credits, numericality: {:greater_than => 0, :only_integer => true, :message => 'must be a positive whole number' }
  end
end
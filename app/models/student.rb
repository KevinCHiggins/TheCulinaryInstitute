class Student < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :course_module
  validates_each :name, :email do |record, attr, value|
    if value.to_s.length < 1
      record.errors.add attr, 'is empty'
    end
  end

end

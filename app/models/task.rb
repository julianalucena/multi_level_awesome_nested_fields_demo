class Task < ActiveRecord::Base
  belongs_to :project
  has_many :resources
  accepts_nested_attributes_for :resources, allow_destroy: true,
    reject_if: :all_blank

  validates_presence_of :description
end

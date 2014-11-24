class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :user, :presence => true
  validates :name, :presence => true
end

class Category < ActiveRecord::Base
  has_many :tasks
  belongs_to :user

  validates :name, :presence => true
  validates :user, :presence => true
  validates :name, :uniqueness => { :scope => :user }
  # validates :user, :uniqueness => { :scope => :order } may require custom validation
end

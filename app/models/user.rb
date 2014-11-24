class User < ActiveRecord::Base
  has_many :tasks
  has_many :categories

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true :uniqueness => true
  # Add one for validating a unique first_name last_name and email combination
end

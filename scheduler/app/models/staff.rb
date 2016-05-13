# Class that content, not only, information about teachers
class Staff
  include Mongoid::Document
  
  field :name, type: String
  field :email, type: String

  has_many :class

  validates_uniqueness_of :email
  validates_presence_of :name, :email, :subject
end

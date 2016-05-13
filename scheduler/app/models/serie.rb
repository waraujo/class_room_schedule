# Class will be identify the classes for each series.
class Serie
  include Mongoid::Document

  field :name, type: String
  field :description, type: String

  has_many :class_room
  belongs_to :institution

  validates_presence_of :name
end

# Class will be identify the classes for each series.
class Class
  include Mongoid::Document

  field :quantity, type: Number
  
  belongs_to :class_room
  belongs_to :subject
  belongs_to :staff

  validates_presence_of :quantity, :class_room, :subject, :staff
  validates_uniqueness_of :class_room, :subject, :staff
end

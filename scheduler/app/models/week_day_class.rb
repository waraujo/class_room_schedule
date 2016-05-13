# Class will be identify the classes for each series.
class Class
  include Mongoid::Document

  field :week_day, type: String
  field :quantity_class, type: Number

  embedded_in :class_room

  validates_presence_of :week_day, :quantity_class, :class_room
end

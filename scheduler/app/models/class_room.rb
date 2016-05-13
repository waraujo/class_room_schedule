# Class will be identify the classes for each series.
class ClassRoom
  include Mongoid::Document

  field :name, type: String
  field :classes_per_week, type: Number
  # Morning, Afternoon, Night
  field :period, type: String

  belongs_to :serie
  has_many :class
  embeds_many :week_day_class

  validates_presence_of :name, :classes_per_week
end

class Cms::PageCategory < ActiveRecord::Base
  has_many :page
  validates_presence_of :name
end

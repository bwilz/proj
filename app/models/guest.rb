class Guest < ActiveRecord::Base
  belongs_to :user
#  before_save { self.name = name.downcase}
  validates :name, presence: true, length: {maximum:50},
            uniqueness: {case_sensitive: false}
#  validates :additional, presence: true, length: {maximum:255}
  
end

class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  validates :name, presence: true, length: {maximum: 100}, uniqueness: true
  before_validation(:capitalize_each)

  def capitalize_each
    names = name.split
    names.each do |n|
      n.capitalize!
    end
    self.name = names.join(' ')
  end
end

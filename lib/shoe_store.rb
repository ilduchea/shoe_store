class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  validates :name, presence: true, length: {maximum: 100}, uniqueness: true
  before_validation(on: :create) {self.capitalize_each}

  def capitalize_each
    names = name.split
    names.each do |n|
      n.capitalize!
    end
    self.name = names.join(' ')
  end
end

class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates :brand, presence: true, length: {maximum: 100}, uniqueness: true
  before_validation(on: :create) {self.capitalize_each}

  def self.to_money (number)
    cents = number.*(100)
    Money.new(cents).format
  end

  def capitalize_each
    brands = brand.split
    brands.each do |b|
      b.capitalize!
    end
    self.brand = brands.join(' ')
  end

end

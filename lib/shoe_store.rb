class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)

end

class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

end

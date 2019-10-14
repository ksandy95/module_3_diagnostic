class House < ApplicationRecord
  has_many :characters

  validates_presence_of :name, :mascot, :school, :founder,
                        :houseGhost, :headOfHouse, :_id
end

class Character < ApplicationRecord
  belongs_to :house

  validates_presence_of :name, :_id
end

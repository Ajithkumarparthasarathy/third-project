class Table < ApplicationRecord
    belongs_to :author
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :price, numericality: { only_integer: true}
    validates :phone, length: { is: 10 }

end

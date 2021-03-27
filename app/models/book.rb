class Book < ApplicationRecord
    has many :readers
    has_many :reviews
end

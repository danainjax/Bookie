class Book < ApplicationRecord
    has_many :readers
    has_many :reviews
end

class House < ApplicationRecord

has_many(:people, {
    primary_key: :id,
    foreign_key:  :people_id,
    class_name: :Person
})




end
class Person < ApplicationRecord

    belongs_to(:houses, {
        primary_key: :id,
        foreign_key: :people_id,
        class_name: :House 
    })





end
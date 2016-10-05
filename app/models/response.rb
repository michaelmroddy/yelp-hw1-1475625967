class Response < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "Ownership"

  belongs_to :review

  # Indirect associations

  # Validations

end

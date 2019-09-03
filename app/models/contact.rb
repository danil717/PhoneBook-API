class Contact < ApplicationRecord
	validates :name, :number, :desription, presence: true
end

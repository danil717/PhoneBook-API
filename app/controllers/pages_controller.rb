class PagesController < ApplicationController

	def phonebook
		redirect_to contacts_path
	end

end

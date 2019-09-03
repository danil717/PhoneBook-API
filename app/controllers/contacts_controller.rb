class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end
	
	def create
		@contact = Contact.new(contact_params)
		
		if @contact.save
			redirect_to contacts_path
		else
			render :new
		end
	end
	
	def index
		@contacts = Contact.all
	end
	
	def edit
		@contact = Contact.find(params[:id])
	end
	
	def update
		@contact = Contact.find(params[:id])
		if @contact.update(contact_params)
			redirect_to contacts_path
		else
			render :edit
		end
	end
	
	def show
		@contact = Contact.find(params[:id])		
	end
	
	def destroy
		@contact = Contact.find(params[:id])
		if @contact.destroy
			redirect_to contacts_path
		else
			redirect_to contacts_path, error: 'Failure'
		end
	end
	
	private	
		def contact_params
			params[:contact].permit(:name, :number, :desription)
		end

end

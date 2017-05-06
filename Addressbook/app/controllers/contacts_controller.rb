class ContactsController < ApplicationController

	def create
		@addbook = Addbook.find(params[:addbook_id])
		@contact = @addbook.contacts.create(contact_params)
		@contact.user_id = current_user.id


		if @contact.save
			redirect_to addbook_path(@addbook)
		else
			render 'new'
		end
	end




	private

	def contact_params
		params.require(:contact).permit(:name, :address, :email, :phone)
	end


end

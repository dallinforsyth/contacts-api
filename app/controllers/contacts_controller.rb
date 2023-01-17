class ContactsController < ApplicationController
  def first_contact_method 

    contacts = []
    index = 1
    2.times do


    contact = Contact.find_by(id: index)
   contacts << {
     
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number,
    }
    
    index = index + 2
    end 
    render json: {contacts: contacts}
  end
  
end

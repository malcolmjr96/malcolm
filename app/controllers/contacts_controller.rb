class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def new
    @contact = Contact.new
  end

  def create
    # Handle the form submission here (send an email, save to a database, etc.)
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to :root, notice: 'Message sent successfully!'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end


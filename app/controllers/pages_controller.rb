class PagesController < ApplicationController
  def terms
  end

  def welcome
  end

  def landing
  end
  
  def about 
  end


 def new
@contact = Contact.new
end

def create
@contact = Contact.new(secure_params)
if @contact.valid?
# TODO save data
# TODO send message
flash[:notice] = "Message sent from #{@contact.name}."
redirect_to root_path
else
render :new
end
end

private
def secure_params
params.require(:contact).permit(:name, :email, :content)
end

end

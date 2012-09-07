class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :city, :state, :phone, :type, :message

  validates_presence_of :name, :email, :city, :state, :phone, :type, :message

end

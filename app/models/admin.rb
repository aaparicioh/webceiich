require 'concerns/permissions_concerns'
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PermissionsConcern
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        
end

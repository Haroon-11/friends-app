class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # validates :name, presence :true,
  # validates :email, presence :true
  


  has_many :friends

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?


  def set_default_role
    self.role ||=:user
  end 


end

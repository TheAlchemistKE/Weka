class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks
  has_many :groups

  after_action: send_welcome_email
  def send_welcome_email
    WelcomeMailer.send_welcome_email(self).deliver
    redirect_to profile_index_path, alert: "Thank you for signing up."
  end
end

# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  gender     :string
#  about      :text
#  service_id :bigint
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  belongs_to :user



# For active storage
  has_one_attached :avatar

	def full_name
    "#{first_name} #{last_name}"
  end

	private 

	def generate_random_uid
		begin
			self.slug = "u#{SecureRandom.random_number(1_000_000_000)}"
		end while User.where(slug: self.slug).exists?
	end 

  
end

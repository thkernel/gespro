# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  login                  :string
#  role_id                :bigint
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  uuid                   :string
#  created_by             :integer
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



         # Relationships
	belongs_to :role
	
	has_one  :profile, dependent: :destroy
	has_many :product_categories, dependent: :destroy
	has_many :movement_types, dependent: :destroy
	has_many :store_types, dependent: :destroy
	has_many :stores, dependent: :destroy




	# Add nested attributes for profile.
	accepts_nested_attributes_for :profile
	
	# Validations

	validates :login, presence: true, uniqueness: true

end

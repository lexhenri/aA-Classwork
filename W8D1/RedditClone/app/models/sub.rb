# == Schema Information
#
# Table name: subs
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  description  :string           not null
#  moderator_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Sub < ApplicationRecord

  belongs_to :moderator,
  foreign_key: :moderator_id,
  class_name: :User

  has_many :post_subs, 
    foreign_key: :sub_id,
    class_name: :PostSub,
    inverse_of: :sub


  has_many :posts,
  through: :post_subs,
  source: :post

  


  
end

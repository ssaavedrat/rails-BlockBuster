# == Schema Information
#
# Table name: clients
#
#  id         :bigint           not null, primary key
#  name       :string
#  age        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Client < ApplicationRecord
  has_many :movies
end

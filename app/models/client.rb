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
  # allow destroy client and set movie client_id to nil
  has_many :movies, dependent: :nullify

  def to_s
    self.name
  end
end

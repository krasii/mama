# == Schema Information
#
# Table name: women
#
#  id            :integer          not null, primary key
#  fname         :string(255)
#  sname         :string(255)
#  surname       :string(255)
#  doctor_id     :integer
#  woman_info_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Woman < ActiveRecord::Base
  attr_accessible :surname, :fname, :sname, :history_id
  belongs_to :doctor
  #belongs_to :marital_status
  has_one :blood
  has_one :woman_info
end

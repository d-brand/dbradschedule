class Teamcore < ApplicationRecord
  validates_uniqueness_of :access_token
  validates_presence_of :access_token
  after_initialize :set_access_token, if: :new_record?
  validates :teamname, presence: true
  belongs_to :user
  has_many :schedules, dependent: :destroy


  #private
  def set_access_token
    self.access_token = self.access_token.blank? ? generate_access_token : self.access_token
  end                                                                                                                                                                                          

  def generate_access_token
    tmp_token = SecureRandom.urlsafe_base64(6)
    self.class.where(:access_token => tmp_token).blank? ? tmp_token : generate_access_token
  end

end

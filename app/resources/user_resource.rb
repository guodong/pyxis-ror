require 'securerandom'

class UserResource < BaseResource
  attributes :tel, :email, :role, :sysname

  before_save do
    self.sysname = SecureRandom.hex(4)
    uri = URI('http://localhost:8081/user')
    res = Net::HTTP.post_form(uri, 'sysname' => self.sysname)
  end
end
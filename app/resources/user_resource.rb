require 'securerandom'

class UserResource < BaseResource
  attributes :tel, :email, :role, :sysname

  before_save do
    self.sysname = SecureRandom.hex(4)
  end
end
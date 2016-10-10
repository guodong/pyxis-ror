require 'net/http'

class InstanceResource < BaseResource
  attributes :token

  has_one :user
  has_one :version

  after_save do
    uri = URI('http://localhost:8081/instances')
    res = Net::HTTP.post_form(uri, 'host_id' => 1, 'sysname' => self.user.sysname, 'cmd' => self.version.cmd)
  end
end

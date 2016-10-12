require 'net/http'

class InstanceResource < BaseResource
  attributes :token

  has_one :user
  has_one :version

  after_save do
    uri = URI('http://localhost:8081/instances')
    res = Net::HTTP.post_form(uri, 'host_id' => '034801c8-d2d2-4c9f-9b5d-7e50bb589bfd', 'sysname' => self.user.sysname, 'cmd' => self.version.cmd)
  end
end

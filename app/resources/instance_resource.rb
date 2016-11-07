require 'net/http'
require 'securerandom'

class InstanceResource < BaseResource
  attributes :token, :width, :height, :use_webrtc

  has_one :user
  has_one :version

  before_save do
    self.token = SecureRandom.uuid
  end

  after_save do
    uri = URI('http://localhost:8081/instances')
    res = Net::HTTP.post_form(uri, 'host_id' => '29ba3e6a-84b3-451a-a282-c156b35ed6b2', 'sysname' => self.user.sysname, 'cmd' => self.version.cmd, 'width' => self.width, 'height' => self.height, 'token' => self.token, 'arch' => self.version.arch, 'use_webrtc' => self.use_webrtc)
  end
end

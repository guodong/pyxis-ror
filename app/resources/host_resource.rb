require 'securerandom'

class HostResource < BaseResource
  attributes :name, :platform, :ostype, :arch, :release, :uptime, :hostname, :cpus, :totalmem, :freemem, :loadavg, :ips, :token, :pool

end
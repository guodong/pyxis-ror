class VersionResource < BaseResource
  attributes :name, :cmd, :arch

  relationship :cloudware, to: :one
end
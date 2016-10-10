class VersionResource < BaseResource
  attributes :name, :cmd

  relationship :cloudware, to: :one
end
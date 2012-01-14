class Gellan
  require 'gellan/version'
  require 'gellan/config'
  require 'gellan/core'
  require 'gellan/mapping'
  require 'gellan/marker'
  require 'gellan/google'
  require 'gellan/bing'

  @@config = Gellan::Config.new

  def self.config
    @@config
  end

  def self.get_mapper(type)
    self.config.map_types[type].new(self.config)
  end

  def self.mapper
    self.config.map_types[self.config.default_type].new(self.config)
  end
end

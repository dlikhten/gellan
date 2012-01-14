class Gellan
  class Config
    attr_accessor :map_types
    attr_accessor :default_type

    def initialize
      self.map_types = {
        :google => Gellan::Google,
        :bing => Gellan::Bing
      }
      self.default_type = :google
    end
  end
end

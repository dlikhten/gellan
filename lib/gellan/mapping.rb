class Gellan
  class Mapping
    attr_accessor :markers
    attr_accessor :config
    attr_accessor :zoom

    def initialize(config = nil)
      self.config = config
    end

    def markers
      @markers ||= []
    end

    def add_marker(marker)
      markers << marker
    end

    def add(lat, lng, attrs)
      attrs ||= {}
      args = {:lng => lng, :lat => lat}.merge(attrs)
      self.add_marker(Gellan::Marker.new(args))
    end

    # By contract, this method will render the actual map. To be
    # implemented by the specific mapper class...
    def render(map_type = :static)
      raise "No implemented"
    end
  end
end

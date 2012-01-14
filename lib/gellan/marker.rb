class Gellan
  class Marker
    attr_accessor :lat
    attr_accessor :lng
    attr_accessor :color
    attr_accessor :label

    def initialize(args)
      args ||= {}
      self.lat = args[:lat]
      self.lng = args[:lng]
      self.color = args[:color]
      self.label = args[:label]
    end
  end
end

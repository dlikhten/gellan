class Gellan
  class Google < Gellan::Mapping
    def add_marker(marker)
      self.markers << Gellan::GoogleMarker.new(marker)
    end

    def render_static(width, height)
      validate!

      result = "http://maps.googleapis.com/maps/api/staticmap?"
      result += "&zoom=#{zoom}" unless zoom.nil?
      result += "&size=#{width}x#{height}"
      result += "&sensor=false"
      result += markers.map{|m| marker_to_static(m)}.join("")
      
      result
    end

    def marker_to_static(marker)
      marker.validate!

      result = "&markers="
      result += marker.attrs.map {|key, value| "#{key}:#{value}"}.join("|")
      result += "|#{marker.lat},#{marker.lng}"

      result
    end

    def validate!
      raise "Must render with at least one marker" if markers.empty?
    end
  end

  class GoogleMarker
    attr_accessor :attrs
    attr_accessor :lat
    attr_accessor :lng

    def initialize(marker)
      self.lat = marker.lat
      self.lng = marker.lng
      self.attrs = {}
      self.attrs[:color] = marker.color
      self.attrs[:label] = marker.label
    end

    def validate!
      raise "Lat/Lng must be set #{lat}/#{lng}" if lat.nil? || lng.nil?
    end
  end
end

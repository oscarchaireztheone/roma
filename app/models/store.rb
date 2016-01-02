class Store < ActiveRecord::Base
  CLAYTON_STORE_MAPS_LINK = "https://maps.google.com/maps?ll=35.664466,-78.210854&z=10&t=m&hl=en&gl=US&mapclient=embed&q=50%20Neuse%20River%20Pkwy%2C%20Suite%209%20clayton%2C%20nc"
  CLAYTON_STORE = [35.649363, -78.394231]
  DURHAM_STORE = [35.994033, -78.898619]
  DURHAM_STORE_MAPS_LINK ="https://www.google.com/maps/place/121+Sherron+Rd+%23301,+Durham,+NC+27703/@35.9742248,-78.7952097,17z/data=!4m2!3m1!1s0x89acfba0082e1a59:0xe0e153ed31923837"
  
  def self.closer_store_by_zip zip
    geo = Geocoder.search(zip.to_s)
    if geo and geo.first
      geo = geo.first.coordinates
      return self.closer(geo.first, geo.last)
    end
  end

  def self.closer_store ip
    geoip = GeoIP.new('GeoLiteCity.dat').city(ip.to_s)
    if defined? geoip and geoip
      return self.closer(geoip.latitude, geoip.longitude)
    end
  end
  
  def self.closer latitude, longitude
    store1 = Store::CLAYTON_STORE
    store2 = Store::DURHAM_STORE
    if latitude and longitude
      current = [latitude, longitude]
      if GeoDistance::Haversine.distance(current[0], current[1], store1[0], store1[1]).miles.number > \
        GeoDistance::Haversine.distance(current[0], current[1], store2[0], store2[1]).miles.number
        return :durham
      else
        return :clayton
      end
    end
  end
end

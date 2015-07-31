class Store < ActiveRecord::Base
  CLAYTON_STORE_MAPS_LINK = "https://maps.google.com/maps?ll=35.664466,-78.210854&z=10&t=m&hl=en&gl=US&mapclient=embed&q=50%20Neuse%20River%20Pkwy%2C%20Suite%209%20clayton%2C%20nc"
  CLAYTON_STORE = [35.649363, -78.394231]
  DURHAM_STORE = [35.994033, -78.898619]
  
    def self.closer_store ip
    store1 = Store::CLAYTON_STORE
    store2 = Store::DURHAM_STORE
    geoip = GeoIP.new('GeoLiteCity.dat').city(ip.to_s)
    if defined? geoip and geoip
      if geoip.latitude and geoip.longitude
        current = [geoip.latitude, geoip.longitude]
        if GeoDistance::Haversine.distance(current[0], current[1], store1[0], store1[1]).miles.number > \
          GeoDistance::Haversine.distance(current[0], current[1], store2[0], store2[1]).miles.number
          return :durham
        else
          return :clayton
        end
      end
    end
  end
end

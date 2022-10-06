import SwiftUI
import GoogleMaps

class MapInteractor {
    
    let marker: GMSMarker = GMSMarker()

    func placeMarker(latitude: CGFloat, longtitude: CGFloat) {
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
        marker.title = "Seleted Location"
        marker.snippet = "Hello"
    }


    func setUpMap(mapView: GMSMapView) {
        mapView.settings.compassButton = true
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.scrollGestures = true
        mapView.settings.zoomGestures = true
        mapView.settings.rotateGestures = true
        mapView.settings.tiltGestures = true
        mapView.isIndoorEnabled = false
    }
}

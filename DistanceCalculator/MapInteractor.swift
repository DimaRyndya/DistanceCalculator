import SwiftUI
import GoogleMaps
import CoreLocation

class MapInteractor: NSObject, GMSMapViewDelegate {

    let mapView = GMSMapView()

    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        let marker = GMSMarker(position: coordinate)
        marker.title = "Seleted Location"
        marker.map = mapView
        mapView.delegate = self
    }


    func setUpMap() -> GMSMapView {
        mapView.settings.compassButton = true
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.scrollGestures = true
        mapView.settings.zoomGestures = true
        mapView.settings.rotateGestures = true
        mapView.settings.tiltGestures = true
        mapView.isIndoorEnabled = false
        return mapView
    }
}

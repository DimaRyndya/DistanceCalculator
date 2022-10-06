import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    let viewModel = ViewModel()
    let marker: GMSMarker = GMSMarker()
    private let locationManager = CLLocationManager()

    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.london
        let mapView = GMSMapView(frame: CGRect.zero, camera: camera)
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
    
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
              marker.position = CLLocationCoordinate2D(latitude: 51.507, longitude: 0)
              marker.map = mapView
          }
}

extension GMSCameraPosition {
    static var london = GMSCameraPosition.camera(withLatitude: 51.507, longitude: 0, zoom: 10)
}


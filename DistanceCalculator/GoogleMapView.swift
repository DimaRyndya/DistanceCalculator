import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    let viewModel = ViewModel()
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.london
        let mapView = GMSMapView(frame: CGRect.zero, camera: camera)
        viewModel.interactor.setUpMap(mapView: mapView)
        return mapView
    }
    
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        let marker = viewModel.interactor.marker
        marker.map = mapView
    }
}

extension GMSCameraPosition {
    static var london = GMSCameraPosition.camera(withLatitude: 51.507, longitude: 0, zoom: 10)
}


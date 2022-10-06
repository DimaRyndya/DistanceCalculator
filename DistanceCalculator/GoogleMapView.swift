import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    let mapInteractor = MapInteractor()
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        return mapInteractor.setUpMap()

    }
    
    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
    }
}



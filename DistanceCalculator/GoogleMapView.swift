import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {

    func makeUIView(context: Context) -> some GMSMapView {
        let camera = GMSCameraPosition.london
        let mapView = GMSMapView(frame: CGRect.zero, camera: camera)
            return mapView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

extension GMSCameraPosition {
     static var london = GMSCameraPosition.camera(withLatitude: 51.507, longitude: 0, zoom: 10)
 }


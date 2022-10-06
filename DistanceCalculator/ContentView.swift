import SwiftUI
import GoogleMaps

struct ContentView: View {
    let viewModel = ViewModel()
//    let latitude = CLLocationManager().location?.coordinate.latitude
//    let longtitude = CLLocationManager().location?.coordinate.longitude

    var body: some View {
        NavigationView {
            GoogleMapView()
                .edgesIgnoringSafeArea(.all)
                .toolbar {
                    ToolbarItem(placement: .status) {
                        Button(action: {}) {
                            Text("Error")
                        }
                    }
                }
//                .onTapGesture {
//                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

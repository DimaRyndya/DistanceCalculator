import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GoogleMapView()
                .edgesIgnoringSafeArea(.all)
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {}) {
                            Text("Loading")
                        }
                        .padding()
                    }
                    ToolbarItem(placement: .status) {
                        Button(action: {}) {
                            Text("Error")
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {}) {
                            Text("Results")
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

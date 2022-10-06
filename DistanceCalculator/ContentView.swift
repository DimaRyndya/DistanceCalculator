import SwiftUI

struct ContentView: View {
    let viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            GoogleMapView()
                .edgesIgnoringSafeArea(.all)
                .toolbar {
                    ToolbarItem(placement: .status) {
                        Button(action: { viewModel.interactor.setUpMap()}) {
                            Text("Error")
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

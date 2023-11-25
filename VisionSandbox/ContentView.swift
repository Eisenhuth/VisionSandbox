import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink(destination: SampleScene()){ Label("Hello World", systemImage: "00.circle.fill") }
                NavigationLink(destination: GithubProfileView(userName: "Eisenhuth")) { Label("Github Profile & API", systemImage: "01.circle.fill") }
                NavigationLink(destination: ImagesView()){ Label("Images", systemImage: "02.circle.fill") }
                NavigationLink(destination: RemoteModels()){ Label("Remote Models", systemImage: "03.circle.fill") }
            }
            .navigationTitle("Sandbox")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

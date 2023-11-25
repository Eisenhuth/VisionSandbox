import SwiftUI
import RealityKit
import RealityKitContent

struct SampleScene: View {
    var body: some View {
        VStack{
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
            Text("Hello, world!")
        }
    }
}

#Preview {
    SampleScene()
}

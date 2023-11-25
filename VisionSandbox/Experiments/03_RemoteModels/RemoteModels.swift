import SwiftUI
import RealityKit

struct RemoteModels: View {
    var models = [
    "https://developer.apple.com/augmented-reality/quick-look/models/teapot/teapot.usdz",
    "https://developer.apple.com/augmented-reality/quick-look/models/gramophone/gramophone.usdz",
    "https://developer.apple.com/augmented-reality/quick-look/models/retrotv/tv_retro.usdz",
    "https://developer.apple.com/augmented-reality/quick-look/models/toycar/toy_car.usdz"
    ]
    
    var body: some View {
        ScrollView{
            ForEach(models, id: \.self){model in
                Model3D(url: URL(string: model)!)
                    .scaleEffect(0.5)
            }
        }
        .padding()
    }
}

#Preview {
    RemoteModels()
}

import SwiftUI
import Kingfisher

struct ImagesView: View {
    var width: Int = 1920
    var height: Int = 1080
    var scale: Double = 0.15
    var offset: Int = 500
    
    var scaledWidth: CGFloat { Double(width) * scale }
    var scaledHeight: CGFloat { Double(height) * scale }
    
    var body: some View {
        
        VStack{
            ScrollView(.horizontal){
                HStack{
                    ForEach(0..<10){
                        KFImage(getImageUrl($0))
                            .resizable()
                            .frame(width: scaledWidth, height: scaledHeight)
                    }
                }
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(10..<20){
                        KFImage(getImageUrl($0))
                            .resizable()
                            .frame(width: scaledWidth, height: scaledHeight)
                    }
                }
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(20..<30){
                        KFImage(getImageUrl($0))
                            .resizable()
                            .frame(width: scaledWidth, height: scaledHeight)
                    }
                }
            }
        }
    }
    
    func getImageUrl(_ id: Int) -> URL{
        URL(string: "https://picsum.photos/id/\(id+offset)/\(width)/\(height)")!
    }
}

#Preview {
    ImagesView()
}

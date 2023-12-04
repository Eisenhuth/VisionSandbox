import SwiftUI
import universalis_swift

struct UniversalisTest: View {
    @State private var current: CurrentlyShownView?
    
    var body: some View {
        Text("average price for Fire Shards in EU: \(current?.averagePrice.rounded() ?? 0)")
            .task {
                current = await UniversalisClient().getCurrentData(worldDcRegion: "Europe", itemId: 2)
            }
    }
}

#Preview {
    UniversalisTest()
}

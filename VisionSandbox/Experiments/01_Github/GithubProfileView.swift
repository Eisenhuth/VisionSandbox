import SwiftUI
import YASU
import Kingfisher

struct GithubProfileView: View {
    var userName: String
    
    @State private var user: GithubUser?
    
    var body: some View {
        VStack(alignment: .leading){
            if let avatarUrl = user?.avatar_url{
                KFImage(URL(string: avatarUrl))
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
            }
            Text(user?.name ?? "[name]")
                .font(.title)
            Text(user?.login ?? "[login]")
                .font(.title)
                .foregroundStyle(.secondary)
                .fontWeight(.light)
            Text(user?.bio ?? "[bio]")
            
            if let userUrl = user?.html_url{
                Button(userUrl){
                    UIApplication.shared.open(URL(string: userUrl)!)
                }
            }
        }
        .task {
            let url = URL(string: "https://api.github.com/users/\(userName)")!
            await user = loadData(url)
        }
    }
}

#Preview {
    GithubProfileView(userName: "Eisenhuth")
}

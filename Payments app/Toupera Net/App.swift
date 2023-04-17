
import SwiftUI


struct MyApp: View{
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .navigationViewStyle(StackNavigationViewStyle()) // remover botão de voltar
        }
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
        MyApp()
    }
}

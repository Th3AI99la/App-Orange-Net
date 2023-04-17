
import SwiftUI
import SystemConfiguration

struct myConexoes: View {
    @State private var isConnected = false
    
    var body: some View {
        VStack {
            if isConnected {
                Text("Você está conectado à internet!")
            } else {
                Text("Não foi possível conectar à internet.")
            }
        }
        .onAppear {
            self.checkNetwork()
        }
    }
    
    func checkNetwork() {
        let reachability = SCNetworkReachabilityCreateWithName(nil, "www.google.com")
        var flags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reachability!, &flags)
        
        if flags.contains(.reachable) {
            if flags.contains(.isWWAN) {
                print("Conectado à internet móvel")
            } else {
                print("Conectado à internet Wi-Fi")
            }
            self.isConnected = true
        } else {
            self.isConnected = false
        }
    }
}

struct myConexoes_Previews: PreviewProvider {
    static var previews: some View {
        myConexoes()
    }
}

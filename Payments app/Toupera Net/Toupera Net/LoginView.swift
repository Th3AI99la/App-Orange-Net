import SwiftUI

struct LoginView: View {
    
    @State private var username = ""
       @State private var password = ""
       @State private var forgotPassword = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

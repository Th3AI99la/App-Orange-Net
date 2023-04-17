import SwiftUI
import LocalAuthentication


struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = false 
    @State private var wrongPassword = false
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var readyToNavigate = false // troca de tela
    @State private var isButtonEnabled = false
    @State private var isLoading: Bool = false
    @State private var isAuthenticated = false
 
    var body: some View {
        
    
        
        NavigationView {
            
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.orange, .black]), center: .bottom, startRadius: 200, endRadius: 650)
                    .ignoresSafeArea(.all)
                
                Circle()
                    .scale(1.8)
                    .foregroundColor(.blue.opacity(0.20))
                
                Circle()
                    .scale(1.30)
                    .foregroundColor(.black.opacity(0.10))
                
                VStack {
                   
                    
                    Text("Bem vindo (a)")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .light))
                    
                    
                    Text("Login")
                        .font(.system(size: 30, weight: .light))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .offset(x: -110)
                    
                   
                    
                    TextField("Usuário", text: $username)
                    
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.50))
                        .cornerRadius(10)
                        .overlay(
                            
                            
                       RoundedRectangle(cornerRadius: 10)
                                .stroke(wrongUsername ? Color.red : Color.clear, lineWidth: 2)
                                
                        )
                    
                        .onChange(of: username) { _ in
                                    updateButtonState()
                        }
                       
                    
                    
                    
                    
                    SecureField("Senha", text: $password)
                    
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.50))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(wrongPassword ? Color.red : Color.clear, lineWidth: 2)
                        
                
                        
                        )
                    
                        .onChange(of: password) { _ in
                                           updateButtonState()
                                       }
                    
                    
                    
                    
                    // MARK: SISTEMA DA TELA DE LOGIN + BOTÃO
                    
                    
                    Button(action:  {
                        isLoading = true
                           autenticarUser(username: username, password: password)
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Simulando um atraso de 1 segundo
                            isLoading = false
                            presentationMode.wrappedValue.dismiss()
                        }
                    }){
                      
                        Text("Entrar")
                        
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(isButtonEnabled ? Color.orange.opacity(1) : Color.black.opacity(0.50))
                            .cornerRadius(30)
        
                    }
                    
                    .disabled(!isButtonEnabled)
                    
                    .padding(30)
                    
                    if isLoading {
                        
                        ZStack {
                            ProgressView()
                      
                        }
                    }
                    
                    

                   
 
                NavigationLink(destination: MainOlaView(), isActive: $readyToNavigate) { // reparar
                            EmptyView()
      
                        }
             
                
                    }
                 
               
                } // FINAL ZStack
                
                
                
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Erro de autenticação"), message: Text(alertMessage), dismissButton: .default(Text("Ok")))
                    
                        
                }
            
                .overlay(SplashScreen())
      
  }
        

       
        
    }
    
    
    func updateButtonState() {
          isButtonEnabled = !username.isEmpty && !password.isEmpty
      }
    
    func autenticarUser(username: String, password: String) {
        if username.lowercased() == "1" { // nome do usuario
            wrongUsername = false
            
            if password.lowercased() == "1" { // senha
                wrongPassword = false
                readyToNavigate = true
            } else {
                wrongPassword = true
                showAlert = true
                alertMessage = "Senha incorreta"
            }
        } else {
            wrongUsername = true
            showAlert = true
            
        }
    }
    
    
    


    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

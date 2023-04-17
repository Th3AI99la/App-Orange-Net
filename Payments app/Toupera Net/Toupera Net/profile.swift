import SwiftUI


struct profile: View {
   
        // MARK: VARIAVEIS
    
    
    
        @State private var name: String = "Thalles Henrique Alves de Souza"
        @State private var birthdate: String = "10/01/2001"
        @State private var phoneNumber: String = "62 995268975"
        @State private var email: String = "tallles.th54@gmail.com"
        @State private var isEditing: Bool = false
    

    
    var body: some View {
        
    
        // MARK: MECANICA DA BIBIOTE
        
        
        
        VStack {
            
          
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
     
                Text(name)
                .font(.system(size: 20, weight: .light))
                .foregroundStyle(.white)
           
            
         
            // MARK: CAMPO DE INFORMAÇÕES
            
                
            
            NavigationView {
         
                VStack (alignment: .leading, spacing: 25){
              
                    
                    HStack (spacing: 30){
                        
                        Image(systemName: "person.fill")
                            .font(.system(size: 30, weight: .regular))
                            .foregroundStyle(.white)// alterar para white
                            .symbolRenderingMode(.monochrome)
                        
                        
                        Text (name)
                        
                            .font(.system(size: 18, weight: .light))
                            .foregroundStyle(.white)// alterar para white
                        
                    }
                    
                    Divider()
                        .background(Color.white)
                    
                    HStack (spacing: 30){
                        
                        Image(systemName: "birthday.cake")
                        
                            .font(.system(size: 30, weight: .regular))
                            .foregroundStyle(.white)// alterar para white
                            .symbolRenderingMode(.monochrome)
                        
                        Text (birthdate)
                            .font(.system(size: 18, weight: .light))
                            .foregroundStyle(.white)
                        
                    }
                    Divider()
                        .background(Color.white)
                    
                    HStack (spacing: 30) {
                        
                        Image(systemName: "phone.circle")
                        
                            .font(.system(size: 30, weight: .regular))
                            .foregroundStyle(.white)// alterar para white
                            .symbolRenderingMode(.monochrome)
                        
                        Text (phoneNumber)
                        
                            .font(.system(size: 18, weight: .light))
                            .foregroundStyle(.white)
                        
                    }
                    
                    Divider()
                        .background(Color.white)
                    
                    HStack (spacing: 30){
                        
                        Image(systemName: "envelope")
                        
                            .font(.system(size: 30, weight: .regular))
                            .foregroundStyle(.white)// alterar para white
                            .symbolRenderingMode(.monochrome)
                        
                        Text (email)
                            .font(.system(size: 18, weight: .light))
                            .foregroundStyle(.white)
                        
                    }
                    
               
                        
                }
                
                .padding(30)
                .navigationBarTitle("Perfil")
           
                
              
                .navigationBarItems(trailing: Button(action: {
                    self.isEditing = true
                }) {
                    Text("Editar")

                        .font(.system(size: 20, weight: .light))
                })
                
          
                .background(Color("color_back"))
                
                .cornerRadius(10)
                
                .sheet(isPresented: $isEditing) {
                    EditProfileView(name: self.$name, birthdate: self.$birthdate, phoneNumber: self.$phoneNumber, email: self.$email)
                      
                        
                }
              
              
               
                
            }
            
       
           
        }
  
        .background(LinearGradient(gradient: Gradient(colors: [.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
       
    }
        
}
    
    
  
        //MARK: STRUCT PADRÃO

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}

//MARK: EDIT PROFILE


struct EditProfileView: View {
    
    @Binding var name: String
    @Binding var birthdate: String
    @Binding var phoneNumber: String
    @Binding var email: String
    
    @State private var isSaving: Bool = false // tela de carregamento ao salvar
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Nome")) {
                    TextField("Digite seu nome", text: $name)
                }
                Section(header: Text("Data de nascimento")) {
                    TextField("Digite sua data de nascimento", text: $birthdate)
                }
                Section(header: Text("Número de telefone")) {
                    TextField("Digite seu número de telefone", text: $phoneNumber)
                }
                Section(header: Text("E-mail")) {
                    TextField("Digite seu e-mail", text: $email)
                }
            }
            .navigationBarTitle("Editar perfil")
            .navigationBarItems(trailing: Button(action: {
                
                self.saveChanges()
                   
                // Salvar as informações
            }) {
                Text("Salvar")
                    .font(.system(size: 20, weight: .light))
                   
            })
            
                .disabled(isSaving)
                .overlay(Group {
        
             if isSaving { // // TELA DE CARREGAMENTO
                    
                      Color.black.opacity(0.4).ignoresSafeArea()
                 
                       ProgressView()
                      
                         .cornerRadius(10)
                 
            }
      
        })
    }
}

    func saveChanges() {
            // Mostra a tela de carregamento
            isSaving = true
            
            //Simular salvar alterações por 1 segundos
        
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                // Hide the loading screen
                isSaving = false
                
                //Dispensa a visualização
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }

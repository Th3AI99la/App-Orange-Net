
import SwiftUI

struct BugUIView: View {
    
    @State var rolagemcimabotao = false // rolar
    
    var nome: String = "Thalles Alves"
    
    var body: some View {
        
        NavigationView{
            
            ZStack{

                
                RadialGradient(gradient: Gradient(colors: [.orange, .black, .white]), center: .center, startRadius: 2, endRadius: 1000) // COR DE FUNDO
                
                    .ignoresSafeArea(.all)
                
                
                VStack (alignment: .center, spacing: 0){
                   
                   
                    
                    ScrollView{
                        
                        
                        Image("net_Foto")

                            .resizable() // se adaptar o tamanho da tela
                            .aspectRatio(contentMode: .fit) // ajuste secundário
                            .border(.orange, width: 1.0) // borda ao redor da imagem
                            .cornerRadius(10) // bordas
                            .shadow(radius: 30) //sombras
                            .frame(width: 360, height: 300, alignment: .center)
                        
                        
                        
                VStack(alignment: .leading, spacing: 5){ // ajute de tudo
                            
                    Text("Minhas Faturas")
                        .font(.system(size: 25, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                            
                            VStack{
             
                                
                                Text("Voce não possui faturas !")
                                    .padding(1)
                                    .position(x: 110, y: 30)
                                    .multilineTextAlignment(.leading)
                                
                                Text("As faturas lançadas de seu plano serão exibidas aqui")
                                    .font(.system(size: 16, weight: .light, design: .none))
                                    .position(x: 160, y: 10)
                                    .multilineTextAlignment(.leading) // letras para esquerda
                                    .baselineOffset(1.0) // espaõ entre as letras
              
                    
                            }
                    
                            .foregroundColor(.white)
                            .background(Color(.orange).cornerRadius(20))
                            .frame(width: 350, height: 140)
                           
                    
                    
                    
                    Text("Minhas conexões")
                    
                        .font(.system(size: 25, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                    
                        .padding()
                    
                            VStack{
                    
                                Text("Código: 88124")
                                    .position(x: 70, y: 30)
                                    .multilineTextAlignment(.leading)
                                

                                Text("RUA 18 DE MARÇO, 45 , Goiania,GO")
                                    .font(.system(size: 15, weight: .light, design: .none))
                                    .position(x: 135, y: 20)
                                    .multilineTextAlignment(.leading)
                                   
                                Image (systemName: "wifi")
                                    .position(x: 300, y: -50)
                                    .font(.system(size: 30, weight: .regular))
                                    .foregroundStyle(.white)// alterar para white
                                    .symbolRenderingMode(.monochrome)
                        
                            }
                            .foregroundColor(.white)
                            .background(Color(.orange).cornerRadius(20))
                            .frame(width: 350, height: 140)
                            
                          
                    
                    HStack (alignment: .center, spacing: 1 ){ // painel BOTÃO que sobe
                        
                    
                        Button(action: { // BOTÃO
                            
                            rolagemcimabotao.toggle()
                            
                        }){
              
                            Image(systemName: "chevron.compact.up")

                                    .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 100)
                                            .padding(10)
                                            .padding(.leading, 140)
                                            .foregroundColor(.white)
                                
                                
                            }
                    
                            .buttonStyle(PlainButtonStyle())
                        
                            
                                .sheet(isPresented: $rolagemcimabotao){
                                        
                                    botoespersonView()
                                        .presentationDetents([.fraction(0.30)]) // tamanho da rolagem
                                      
                            
                                
                            }
                            
                        
                   
                        } // final
                    
                    
        }
         
    }
                    
                    .navigationTitle("Home")
                        
                        
                    
                    .navigationBarItems(
                            
                            leading: NavigationLink( // navegação do perfil do TOPO
                                
                                destination: profile(), // editando... no profile()
                                
                                label: {
                                    
                                    Image(systemName: "person.fill")
                                        .accentColor(.white)
                                }),
                            
                            
                
                            trailing: NavigationLink( // navegação dos ajuestes
                            
                                destination: Ajustes(),// editando... no Ajustes()
                                
                                label: {
                                    Image(systemName: "gear")
                                        .accentColor(.white)
                                })
                       
                        
                            
                    
                        )
                    }
                
            
             
                
            }
            
            
      
        }
        
    }
    
}

struct botoespersonView: View{ // botoes AQUI
    
    var body: some View{
        
   
            Text("Selecione uma opção")
                .font(.title)
        HStack{
         
            Image(systemName: "dollarsign.circle.fill")
                .padding()
            
            
            Image(systemName: "bag.fill")
                .padding()
            
            Image(systemName: "phone.fill")
                .padding()
            
            Image(systemName: "lock.open.fill")
                .padding()
            
        }
    }
    
    
}



struct BugUIView_Previews: PreviewProvider {
    static var previews: some View {
        BugUIView()
    }
}

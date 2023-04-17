

import SwiftUI

struct MainOlaView: View {
    
  
    var nome: String = "Thalles Alves"
    
    @State var rolagemcimabotao = false // rolar
    
    //Subir e Descer
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    

    //
    
    var body: some View {
        
NavigationView{
    
   ZStack{

                
    RadialGradient(gradient: Gradient(colors: [.orange, .black, .white]), center: .center, startRadius: 1, endRadius: 1400) // COR DE FUNDO
                
        .ignoresSafeArea(.all)
       
        
            ScrollView{
            
                        
                VStack(alignment: .leading, spacing: 10){ // ajute de tudo
                    
                    
                    VStack (alignment: .center){
                        
                        Button(action: {
                            if let url = URL(string: "https://www.google.com/search?q=net+orange&source=lmns&bih=764&biw=1600&hl=pt-BR&sa=X&ved=2ahUKEwjhp6jz1Kn-AhX1K7kGHbETAt4Q_AUoAHoECAEQAA") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Image("net_Foto")
                            
                                .resizable() // se adaptar o tamanho da tela
                                .aspectRatio(contentMode: .fit) // ajuste secundário
                                .border(.orange, width: 1.0) // borda ao redor da imagem
                                .shadow(radius: 5) //sombras
                                .cornerRadius(10) // bordas
                                .frame(width: 360, height: 300, alignment: .center)
                            
                            
                        }
                        
                    }
                    
                    Text("Minhas Faturas")
                        .font(.system(size: 25, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                    
                    NavigationLink (destination: pagamentos()) {
                        
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
                        
                        
                    }
                    
                    Text("Minhas conexões")
                    
                        .font(.system(size: 25, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                    
                        .padding()
                    
                    NavigationLink (destination: conets()) {
                        
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
                        
                        
                    }
                    
                   
                }
                .padding(15)
         
    }
          
                    // MARK: USUARIO E CONFIGURÃÇOES PROFILE()
       

                    
                  
                    .navigationBarItems(
                            
                            trailing: NavigationLink( // navegação do perfil do TOPO
                                
                                destination: profile(), // editando... no profile()
                                
                                label: {
                                    
                            Image(systemName: "person.circle.fill")
                                    
                                 .font(.title) //fonte
                                 .foregroundColor(Color.white) //cor da fonte
                               
                                })
                
                        )
          
                //BOTÃO PARA CIMA
 
                .blur(radius: getBlurRadius()) // EFEITO BLUR
                
                //Engrenagem do Botão
                GeometryReader{ proxy -> AnyView in
                    
                    let height = proxy.frame(in: .global).height

                    return AnyView(
       
                        ZStack {
                            
                            BlurView(style:
                                    .systemMaterialDark)
                            .clipShape(CustomCorner(corners:[.topLeft,.topRight], radius: 30))
        
                            VStack{
                                
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 60, height: 4) // TAMANHO DA BOLINHA DE SUBIR
                                    .padding(.top)
                                
                            }
                            .frame(maxHeight: .infinity, alignment: .top )
                           
                            
                            
                            // BOTOES INCOPORADOS
                            
                            MenuBotoesView()
                            
                    
                        }
                            .offset(y: height - 45) // Ajuste do TAMANHO da altura de rolagem do botão (TRAVAR ou DESTRAVAR)
                        
                            .offset(y: -offset > 0 ? -offset <= (height - 100) ? offset : -(height - 100) : 0) // fix bugs
                            
                        
                        
                            .gesture(DragGesture().updating($gestureOffset, body: {
                                
                                value, out, _ in
                                
                                out = value.translation.height
                                onChange()
                    
                                
                            }).onEnded({
                                value in
                                
                                let maxHeight = height - 100
                                
                                withAnimation{
                                    
                                    // MARK: CODINÇÃO LOGICA DO MOVIMENTO DO MENU
                                    
                                    if -offset > 100 && -offset < maxHeight / 2{
                                        
                                        offset = -(maxHeight / 4)
                                        
                                    } else if -offset > maxHeight / 3 {
                                        
                                        offset = -(maxHeight / 5) // TAMANHO DA SUBIDA
                                  
                                    } else {
                                        
                                        offset = 0
                                        
                                    }
                            
                                        
                                    
                                }
                             
                                
                                
                            }))
                    
                    )
                  
                }
               
            }
     
    
            .ignoresSafeArea(.all, edges: .top)
           
            
    
        
            
         }
        
        //MARK: TIRA O BOTÃO DE VOLTAR DA TELA DE LOGIN
        
        .navigationBarHidden(true)
       
 
                
      }
        func onChange(){
            
            DispatchQueue.main.async {
                self.offset = gestureOffset + lastOffset
            }
            
        }
    
    func getBlurRadius() -> CGFloat{
        
        let progress = -offset / (UIScreen.main.bounds.height - 100)
        
        return progress * 30
    }
}
    


struct MenuBotoesView: View{ // botoes AQUI
    
    var body: some View{
        
       
        HStack (spacing: 15 ){
            
            // MARK: - EDITANDO....
            
            //Botoes
            
            NavigationLink(destination: pagamentos()) {
                
                VStack (spacing: 13 ) {
                    
                    Button(action: {}, label: {
                       
                    })
                    
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundStyle(.white)
                        .symbolRenderingMode(.monochrome)
                        .font(.system(size: 50, weight: .regular))
                    
                    Text("Pagamentos")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.white)
                }
            }

            
            
            NavigationLink(destination: contratos()) {
                          
                          VStack (spacing: 13 ) {
                              
                              Button(action: {}, label: {
                                 
                              })
                              
                              Image(systemName: "bag.fill")
                                  .foregroundStyle(.white)
                                  .symbolRenderingMode(.monochrome)
                                  .font(.system(size: 50, weight: .regular))
                              
                              Text("Contratos")
                                  .font(.system(size: 15, weight: .medium))
                                  .foregroundColor(.white)
                          }
                      }
            
            NavigationLink(destination: desbloqueior()) {
                          
                          VStack (spacing: 13 ) {
                              
                              Button(action: {}, label: {
                                 
                              })
                              
                              Image(systemName: "lock.open.fill")
                                  .foregroundStyle(.white)
                                  .symbolRenderingMode(.monochrome)
                                  .font(.system(size: 50, weight: .regular))
                              
                              Text("Desbloqueio")
                                  .font(.system(size: 15, weight: .medium))
                                  .foregroundColor(.white)
                          }
                      }
            
            NavigationLink(destination: faleConosco()) {
                          
                          VStack (spacing: 13 ) {
                              
                              Button(action: {}, label: {
                                 
                              })
                              
                              Image(systemName: "phone.fill")
                                  .foregroundStyle(.white)
                                  .symbolRenderingMode(.monochrome)
                                  .font(.system(size: 50, weight: .regular))
                              
                              Text("Fale Conosco")
                                  .font(.system(size: 15, weight: .medium))
                                  .foregroundColor(.white)
                          }
                      }
           
            
            
        }//final HStack
        
     
      
        .padding(.bottom, 530) // pra CIMA botoes
        
        
    
        
    }
    

}
  



struct MainOlaView_Previews: PreviewProvider {
    static var previews: some View {
        MainOlaView()
    }
}

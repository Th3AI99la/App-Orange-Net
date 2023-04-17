import SwiftUI

struct Atendimento: Identifiable {
    let id = UUID()
    let descricao: String
}

struct faleConosco: View {
    
    @State var atendimentos: [Atendimento] = []
    
    let numeroProvedor = "62995268975"
    let linkWhatsapp = "https://wa.me/5562995268975"
    
 

    
    var body: some View {
        
        
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [.black, .orange,]), center: .top, startRadius: 500, endRadius: 1000) // COR DE FUNDO
                    
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(alignment: .leading, spacing: 50) {
                
               
                
                Button(action: {
                    if let url = URL(string: "https://wa.me/5562995268975") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Image("fale_conosco_1")
                    
                        .resizable() // se adaptar o tamanho da tela
                        .aspectRatio(contentMode: .fit) // ajuste secundário
                        .border(.orange, width: 1.0) // borda ao redor da imagem
                        .cornerRadius(10) // bordas
                        .shadow(radius: 30) //sombras
                        .frame(width: 365, height: 300, alignment: .center)
                }
                
                Text("Fale Conosco")
                
                    .font(.system(size: 35, weight: .medium))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    
                   
                    
                
                // Botão 1
                
                Button(action: {
                    if let url = URL(string: numeroProvedor) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    HStack (alignment: .center, spacing: 40) {
                        Image(systemName: "phone.fill")
                            .foregroundStyle(.white)
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 50, weight: .regular))
                        
                        
                        Text("Discar para o provedor")
                        
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }
                }
                
                
                // Botão 2
                
                Button(action: {
                    if let url = URL(string: linkWhatsapp) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    
                    HStack (alignment: .center, spacing: 40){
                        
                        Image(systemName: "phone.circle")
                            .foregroundStyle(.white)
                            .symbolRenderingMode(.monochrome)
                            .font(.system(size: 50, weight: .regular))
                            
                        
                            
                        Text("Converse conosco através de nosso whatsapp")
                        
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }
                  
                }
                
             
               
            
            }
            .padding()
        }
    }
}




struct faleConosco_Previews: PreviewProvider {
    static var previews: some View {
        faleConosco()
    }
}

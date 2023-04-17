
import SwiftUI

struct conets: View {
    var body: some View {
        
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [.black, .orange,]), center: .top, startRadius: 500, endRadius: 1000) // COR DE FUNDO
            
                .ignoresSafeArea() // TODA A AREA
            
            VStack (spacing: 80){
                
                
                Text("Minhas Conexões")
                    .font(.system(size: 30, weight: .light, design: .default))
                    .foregroundColor(.white)
            
                
                // MARK: CONTRATO 1
                
                VStack{
                    
                    
                    
                    Text("Código: 88124")
                        .position(x: 70, y: 20)
                        .multilineTextAlignment(.leading)
                    
                    
                    Text("RUA 18 DE MARÇO, 45 , Goiania,GO")
                        .font(.system(size: 15, weight: .light, design: .none))
                        .position(x: 135, y: 20)
                        .multilineTextAlignment(.leading)
                   
                    
                    Image (systemName: "wifi")
                        .position(x: 300, y: -20)
                        .font(.system(size: 30, weight: .regular))
                        .foregroundStyle(.white)// alterar para white
                        .symbolRenderingMode(.monochrome)
                    
        
        
               
                    
                }
                
                
                .foregroundColor(.white)
                .background(Color("color_back").cornerRadius(10))
                .frame(width: 350, height: 80)
                
         
                // MARK: CONTRATO 2
                
                VStack (alignment: .leading, spacing: 10) {
                    
                    HStack (spacing: 159){
                        
              
                            Text("Conexão")
                          
                                .multilineTextAlignment(.leading)

                            Capsule()
                        
                            .fill(.green)
                        
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("OK")
                                    .font(.system(size: 15, weight: .light))
                                    .foregroundColor(.white)
                                
                                
                            )}
                    
                    
                    HStack (spacing: 158){
                        
              
                            Text("Cadastro")
                          
                                .multilineTextAlignment(.leading)

                            Capsule()
                        
                            .fill(.green)
                        
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("OK")
                                    .font(.system(size: 15, weight: .light))
                                    .foregroundColor(.white)
                                
                                
                            )}
                    
                    HStack (spacing: 112){
                        
              
                            Text("Status de Rede")
                          
                                .multilineTextAlignment(.leading)

                            Capsule()
                        
                            .fill(.green)
                        
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("OK")
                                    .font(.system(size: 15, weight: .light))
                                    .foregroundColor(.white)
                                
                                
                            )}
                    
                    HStack (spacing: 150){
                        
              
                            Text("Financeiro")
                          
                                .multilineTextAlignment(.leading)

                            Capsule()
                        
                            .fill(.green)
                        
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("OK")
                                    .font(.system(size: 15, weight: .light))
                                    .foregroundColor(.white)
                                
                                
                            )}
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
    
                    }
                
                    
                    
                
                .foregroundColor(.white)
                .frame(width: 350, height: 200)
                .background(Color("color_back").cornerRadius(10))
                
         
                
                
                
                    
                HStack{
             
                    Text("VERIFICADO !")
                    
                        .font(.system(size: 15, weight: .light, design: .default))
                        .padding()
                    
                    Image(systemName:"checkmark.seal")
                    
                        .font(.system(size: 25, weight: .regular))
                        .foregroundStyle(.green, .green)
                        .symbolRenderingMode(.palette)
                    
                    
                }
                .padding(4)
                
                .background(Color.white)
                .foregroundColor(.green)
                .cornerRadius(15)
                .frame(width: 350, height: 150)
                
                
            }
        }
        
        
        
        
        
        
        
        
    }
}

struct conets_Previews: PreviewProvider {
    static var previews: some View {
        conets()
    }
}

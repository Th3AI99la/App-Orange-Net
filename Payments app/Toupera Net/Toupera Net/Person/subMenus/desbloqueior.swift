
import SwiftUI

struct desbloqueior: View {
    var body: some View {
        
        ZStack{
            
           
            RadialGradient(gradient: Gradient(colors: [.black, .orange,]), center: .top, startRadius: 500, endRadius: 1000) // COR DE FUNDO
            
                .ignoresSafeArea() // TODA A AREA
        
    
            VStack (alignment: .leading, spacing: 30){
                
                
            Text("Desbloquear Conexão")
                    .font(.system(size: 30, weight: .light, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, -100)
                  
       
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
                        
                    Text("CONEXÃO DESBLOQUEADA")
                    
                        .font(.system(size: 20, weight: .light, design: .none))
                        .position(x: 165, y: 10)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                        
                    }
               
                
                    .foregroundColor(.white)
                    .background(Color("color_back").cornerRadius(10))
                    .frame(width: 350, height: 140)
                
                
                HStack{
                    
                    Image(systemName:"checkmark.seal")
                    
                        .font(.system(size: 25, weight: .regular))
                        .foregroundStyle(.green, .green)
                        .symbolRenderingMode(.palette)

                    
                    Text("Não há bloqueios em suas conexões!")

                        .font(.system(size: 15, weight: .light, design: .default))
                        .padding()
                      
                      
               
                }
                .padding(5)
                
                .background(Color.white)
                .foregroundColor(.green)
                .cornerRadius(15)
                .frame(width: 350, height: 100)
    
                
            }
            .padding(20)
            
    
        }
       
       
    
    }
    
}

struct desbloqueior_Previews: PreviewProvider {
    static var previews: some View {
        desbloqueior()
    }
}


import SwiftUI

struct contratos: View {
    
    var body: some View {
        
        
        ZStack{

            RadialGradient(gradient: Gradient(colors: [.black, .orange,]), center: .top, startRadius: 500, endRadius: 1000) // COR DE FUNDO
            
                .ignoresSafeArea() // TODA A AREA
            
            
            VStack (alignment: .leading, spacing: 30){
                
                
                Text("Contratos")
                    .font(.system(size: 30, weight: .light, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, -50)
                
                // MARK: CONTRATO 1
                
                VStack{
                    
                    
                    
                    Text("2022 Fibra até 500Mb - 119,90")
                        .position(x: 130, y: 20)
                        .multilineTextAlignment(.leading)
                    
                    
                    Text("RUA 18 DE MARÇO, 45 , Goiania,GO")
                        .font(.system(size: 15, weight: .light, design: .none))
                        .position(x: 135, y: 20)
                        .multilineTextAlignment(.leading)
                    
                    Text("Número do contrato:")
                    
                        .position(x: 92, y: 30)
                        .multilineTextAlignment(.leading)
                    
                    Text("127792")
                        .font(.system(size: 15, weight: .light, design: .none))
                        .position(x: 40, y: 30)
                        .multilineTextAlignment(.leading)
                    
                    Image (systemName: "wifi")
                        .position(x: 300, y: -50)
                        .font(.system(size: 30, weight: .regular))
                        .foregroundStyle(.white)// alterar para white
                        .symbolRenderingMode(.monochrome)
                    
        
                        
                    Capsule()
                        
                        .fill(.green)
                     
                        .frame(width: 70, height: 30)
                        .overlay(
                            Text("Vigente")
                                .font(.system(size: 15, weight: .light))
                                .foregroundColor(.white)
                        
                        
                        )
                        .position(x: 300, y: -20)
               
                    
                }
                
                
                .foregroundColor(.white)
                .background(Color("color_back").cornerRadius(10))
                .frame(width: 350, height: 140)
                
         
                // MARK: CONTRATO 2
                
                    VStack {
                        
                        Text("2020 Fibra até 200Mb - 89,90")
                            .position(x: 130, y: 20)
                            .multilineTextAlignment(.leading)
                        
                        
                        Text("RUA 18 DE MARÇO, 45 , Goiania,GO")
                            .font(.system(size: 15, weight: .light, design: .none))
                            .position(x: 135, y: 20)
                            .multilineTextAlignment(.leading)
                        
                        Text("Número do contrato:")
                        
                            .position(x: 92, y: 30)
                            .multilineTextAlignment(.leading)
                        
                        Text("103102")
                            .font(.system(size: 15, weight: .light, design: .none))
                            .position(x: 40, y: 30)
                            .multilineTextAlignment(.leading)
                        
                        Image (systemName: "wifi")
                            .position(x: 300, y: -50)
                            .font(.system(size: 30, weight: .regular))
                            .foregroundStyle(.white)// alterar para white
                            .symbolRenderingMode(.monochrome)
                        
                        
                        
                        Capsule()
                        
                            .fill(.red)
                        
                            .frame(width: 80, height: 30)
                            .overlay(
                                Text("Encerrado")
                                    .font(.system(size: 15, weight: .light))
                                    .foregroundColor(.white)
                                
                                
                            )
                            .position(x: 300, y: -20)
                        
                        
                    }
                
                    
                    .foregroundColor(.white)
                    .background(Color("color_back").cornerRadius(10))
                    .frame(width: 350, height: 140)
                
                    
                HStack{
                    
                    
                    Image(systemName:"checkmark.seal")
                    
                        .font(.system(size: 25, weight: .regular))
                        .foregroundStyle(.green, .green)
                        .symbolRenderingMode(.palette)
                    
                    
                    Text("Não há debitos vinculados a sua conta :)")
                    
                        .font(.system(size: 15, weight: .light, design: .default))
                        .padding()
                    
                    
                    
                }
                .padding(5)
                
                .background(Color.white)
                .foregroundColor(.green)
                .cornerRadius(15)
                .frame(width: 350, height: 150)
                
                
            }
        }
    }
   
    struct contratos_Previews: PreviewProvider {
        static var previews: some View {
            contratos()
        }
    }
}

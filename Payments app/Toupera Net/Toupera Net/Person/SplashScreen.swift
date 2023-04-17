import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    @State var blinkCount: Int = 2 // quantidade de vezes que a imagem vai piscar
    
    var body: some View {
        
        ZStack {
                 Image("Logo_orange_studi")
                     .resizable() // se adaptar o tamanho da tela
                     .aspectRatio(contentMode: .fill)
                     .edgesIgnoringSafeArea(.all)
                     .opacity(isActive ? 0 : 1)
                     .onAppear {
                         withAnimation(.easeInOut(duration: 1.3).repeatCount(1)) {
                             self.isActive = true
                         }
                         DispatchQueue.main.asyncAfter(deadline: .now() + 3.8) {
                             //redirecionar para a tela principal do app
                         }
                     }
             }
        
        .statusBar(hidden: true)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                //redirecionar para a tela principal do app
            }
        }
    }
    
    func blinkImage() {
        withAnimation {
            blinkCount -= 1
            isActive.toggle()
        }
        
        if blinkCount > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                blinkImage()
            }
        }
    }
}


    struct SplashScreen_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreen()
        }
    }


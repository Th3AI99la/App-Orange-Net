import SwiftUI

struct tesete: View {
    @State private var showButton = false
    
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy in
                VStack {
                    ForEach(0..<50) { index in
                        Text("Row \(index)")
                            .frame(height: 50)
                            .id(index)
                    }
                }
                .onAppear {
                    // Mostra o botão assim que o conteúdo é carregado
                    showButton = true
                }
                .onChange(of: proxy.wrappedValue.contentOffset.y) { _ in
                    // Esconde o botão se o usuário rolar para cima
                    showButton = proxy.wrappedValue.contentOffset.y > 0
                }
                // Adiciona o botão ao final do conteúdo
                if showButton {
                    Button("Voltar ao topo") {
                        withAnimation {
                            proxy.scrollTo(0)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}


struct tesete_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

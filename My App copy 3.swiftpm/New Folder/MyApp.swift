import SwiftUI

@main
struct MyApp: App {
    @StateObject private var appState = AppState()
    var body: some Scene {
        WindowGroup {
            if appState.globalCount == 0 {
                Pgone()
                    .onAppear {
                        // Start a timer to update globalCount
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            appState.globalCount = 1
                            
                        }
                    }
            } else {
                Pgacc()
            
            }
        }
    }
}


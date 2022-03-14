import SwiftUI
import AVFAudio
import MediaPlayer

@main
struct SoulProvider: App {
    private var audioSession: AVAudioSession? = nil

    @StateObject private var player = RadioPlayer()

    init() {
        
    }

    var body: some Scene {
        WindowGroup {
            RadioView()
                .environmentObject(player)
                .preferredColorScheme(.light)
        }
    }
}

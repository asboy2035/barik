import AppKit
import EventKit
import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            menuBar
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .font(.headline)
        .background(.ultraThinMaterial)
    }

    // MARK: - Menu Bar
    private var menuBar: some View {
        ZStack {
            HStack(spacing: 0) {
                Spacer().frame(width: 25)
                SpaceIndicatorWidget()
                Spacer()
            }

            HStack {
                Spacer()
                HStack(spacing: 0) {
                    BatteryWidget()

                    Spacer().frame(width: 15)
                    Rectangle()
                        .fill(Color.white.opacity(0.6))
                        .frame(width: 2, height: 15)
                        .clipShape(Capsule())
                    Spacer().frame(width: 15)
                }
                .font(.system(size: 15))

                TimeWidget()
                Spacer().frame(width: 25)
            }

        }
        .frame(height: 55)
    }
}

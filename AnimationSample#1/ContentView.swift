//
//  ContentView.swift
//  AnimationSample#1
//
//  Created by cmStudent on 2023/04/14.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1.0

        var body: some View {
            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .animation(.easeInOut(duration: 1), value: scale)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        withAnimation {
                            scale = (scale == 1) ? 2 : 1
                        }
                    }
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  AdustableModalView.swift
//  Day15
//
//  Created by Shun Sato on 2024/04/29.
//

import SwiftUI

struct AdjustableModalView: View {
    @State private var showModal = false
    @State private var viewHeight: CGFloat = 300  // モーダルの初期高さ
    @GestureState private var dragState = DragState.inactive

    var body: some View {
        ZStack {
            Button("Show Modal") {
                showModal = true
            }

            if showModal {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        showModal = false
                    }

                // モーダルコンテンツ
                GeometryReader { geometry in
                    VStack {
                        Spacer()
                        VStack {
                            handleBar
                            content
                        }
                        .frame(width: geometry.size.width, height: viewHeight)
                        .background(Color.white)
                        .cornerRadius(10)
                        .offset(y: geometry.size.height - viewHeight)
                        .gesture(dragGesture())
                    }
                }
            }
        }
    }

    var handleBar: some View {
        RoundedRectangle(cornerRadius: 3)
            .frame(width: 40, height: 6)
            .foregroundColor(.gray)
            .padding(10)
    }

    var content: some View {
        VStack {
            Text("Adjustable Modal")
            Button("Close") {
                showModal = false
            }
        }
    }

    func dragGesture() -> some Gesture {
        DragGesture()
            .updating($dragState) { drag, state, _ in
                state = .dragging(translation: drag.translation)
            }
            .onEnded(onDragEnded)
    }

    func onDragEnded(drag: DragGesture.Value) {
        let verticalMovement = drag.translation.height
        let newHeight = viewHeight - verticalMovement
        viewHeight = max(100, min(newHeight, UIScreen.main.bounds.height - 50))
    }

    enum DragState {
        case inactive
        case dragging(translation: CGSize)

        var translation: CGSize {
            switch self {
            case .inactive:
                return .zero
            case .dragging(let translation):
                return translation
            }
        }

        var isDragging: Bool {
            switch self {
            case .inactive:
                return false
            case .dragging:
                return true
            }
        }
    }
}

//struct AdjustableModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        AdjustableModalView()
//    }
//}

#Preview {
    AdjustableModalView()
}

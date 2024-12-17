//
//  LearningListView.swift
//  SwiftUI2024
//
//  Created by Rifat Firdaus on 04/05/24.
//

import SwiftUI

struct LearningListView: View {
    var body: some View {
        NavigationView {
            List(LearnList.data) { learn in
                NavigationLink(destination: getPage(learn.id)) {
                    Text("\(learn.id). \(learn.title)")
                }
            }
            .navigationTitle("Learning")
        }
    }
    
    func getPage(_ id: Int) -> AnyView {
        switch id {
        case 1:
            return AnyView(DiamondShapeView())
        case 2:
            return AnyView(FormSampleView())
        case 3:
            return AnyView(StateBindingView())
        case 4:
            return AnyView(LearnObservableView())
        default:
            return AnyView(Text("This learning is empty"))
        }
    }
}

#Preview {
    LearningListView()
}

struct LearnList {
    static let data = [
        LearnModel(id: 1, title: "Custom Shape"),
        LearnModel(id: 2, title: "Form"),
        LearnModel(id: 3, title: "StateBinding"),
        LearnModel(id: 4, title: "Observable"),
        LearnModel(id: 5, title: "Learn 5"),
        LearnModel(id: 6, title: "Learn 6"),
    ]
}

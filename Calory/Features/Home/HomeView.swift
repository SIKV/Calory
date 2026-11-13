import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            List {
                Section {
                    SummaryView()
                }
                
                Section {
                    ForEach(1...7, id: \.self) { i in
                        Text("Item \(i)")
                    }
                } header: {
                    HStack(alignment: .firstTextBaseline) {
                        Text(.homeEntriesTitle)
                            .font(.title2.bold())
                            .foregroundStyle(.black)
                        Spacer()
                        Text(.homeEntriesSubtitle(gram: 0))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle(.homeTitle)
            .navigationSubtitle("Wednesday 13 November")
            .toolbar {
                Menu {
                    Button(.homeMenuFeedback, systemImage: .iconFeedback) { }
                    Button(.homeMenuPrivacy, systemImage: .iconPrivacy) { }
                    Divider()
                    Label(.homeMenuVersion(version: "1.0 (1)"), systemImage: .iconInfo)
                } label: {
                    Label(.homeMenuMore, systemImage: .iconMore)
                }
            }
            .safeAreaInset(edge: .bottom) {
                Button {
                    
                } label: {
                    Label(.homeButtonAddFood, systemImage: .iconAdd)
                        .font(.headline)
                }
                .buttonStyle(.glass)
                .controlSize(.large)
            }
        }
    }
}

#Preview {
    HomeView()
}

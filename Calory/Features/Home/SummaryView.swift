import SwiftUI

struct SummaryView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(.homeSummaryTitle)
                        .font(.subheadline.bold())
                        .foregroundStyle(.secondary)
                    Text("0")
                        .font(.system(size: 50, weight: .black))
                    Text(.homeSummarySubtitle(entries: 0))
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                DonutRingView(
                    segments: [
                        .init(value: 0, color: .indigo),
                        .init(value: 0, color: .orange),
                        .init(value: 0, color: .cyan),
                    ]
                )
                .frame(width: 100, height: 100)
            }
            Divider()
            HStack {
                NutrientStatView(
                    title: .nutrientProtein,
                    value: 0,
                    unit: .nutrientUnit,
                    color: .indigo,
                )
                Spacer()
                NutrientStatView(
                    title: .nutrientFat,
                    value: 0,
                    unit: .nutrientUnit,
                    color: .orange
                )
                Spacer()
                NutrientStatView(
                    title: .nutrientCarbs,
                    value: 0,
                    unit: .nutrientUnit,
                    color: .blue
                )
            }
            .padding()
        }
    }
}

#Preview {
    SummaryView()
        .padding()
}

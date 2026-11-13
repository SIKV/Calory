import SwiftUI

struct NutrientStatView: View {
    let title: LocalizedStringResource
    let value: Int
    let unit: LocalizedStringResource
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Circle()
                    .fill(color)
                    .frame(width: 8, height: 8)
                Text(title)
                    .font(.subheadline.bold())
                    .foregroundStyle(.secondary)
            }
            HStack(alignment: .firstTextBaseline, spacing: 4) {
                Text("\(value)")
                    .font(.title2.bold())
                    .foregroundStyle(.primary)
                    .contentTransition(.numericText())
                Text(unit)
                    .font(.subheadline.bold())
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    NutrientStatView(
        title: "Protein",
        value: 120,
        unit: "g",
        color: .indigo
    )
}

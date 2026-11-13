import SwiftUI

struct DonutRingView: View {
    
    struct Segment {
        let value: Double
        let color: Color
    }
    
    let segments: [Segment]
    var lineWidth: CGFloat = 15
    var gap: Double = 0.01
    
    var body: some View {
        ZStack {
            ForEach(Array(ranges.enumerated()), id: \.offset) { _, r in
                Circle()
                    .trim(from: r.start + gap / 2, to: r.end - gap / 2)
                    .stroke(r.color, style: StrokeStyle(lineWidth: lineWidth, lineCap: .butt))
            }
        }
        .rotationEffect(.degrees(-90))
        .padding(lineWidth / 2)
    }
    
    private var ranges: [(start: Double, end: Double, color: Color)] {
        let total = segments.reduce(0) { $0 + $1.value }
        guard total > 0 else { return [] }
        var start = 0.0
        return segments.map { s in
            let end = start + s.value / total
            defer { start = end }
            return (start, end, s.color)
        }
    }
}

#Preview {
    DonutRingView(
        segments: [
            .init(value: 15, color: .indigo),
            .init(value: 30, color: .orange),
            .init(value: 55, color: .cyan),
        ]
    )
    .frame(width: 160, height: 160)
}

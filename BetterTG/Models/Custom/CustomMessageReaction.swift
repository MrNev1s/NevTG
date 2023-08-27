// CustomMessageReaction.swift

struct CustomMessageReaction: Identifiable, Equatable {
    let id = UUID()
    var isChosen: Bool
    var totalCount: Int
    var emoji: String
}

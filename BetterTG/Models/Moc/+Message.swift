// +Message.swift

import SwiftUI
import TDLibKit

extension Message {
    static func moc(_ isOutgoing: Bool, _ count: Int) -> Message {
        Message(
            authorSignature: "",
            autoDeleteIn: 0,
            canBeDeletedForAllUsers: false,
            canBeDeletedOnlyForSelf: false,
            canBeEdited: false,
            canBeForwarded: false,
            canBeSaved: false,
            canGetAddedReactions: false,
            canGetMediaTimestampLinks: false,
            canGetMessageThread: false,
            canGetStatistics: false,
            canGetViewers: false,
            canReportReactions: false,
            chatId: 0,
            containsUnreadMention: false,
            content: .moc(count),
            date: 0,
            editDate: 0,
            forwardInfo: .moc,
            hasTimestampedMedia: false,
            id: 0,
            interactionInfo: .init(forwardCount: 0, reactions: [], replyInfo: nil, viewCount: 0),
            isChannelPost: false,
            isOutgoing: false,
            isPinned: isOutgoing,
            isTopicMessage: false,
            mediaAlbumId: 0,
            messageThreadId: 0,
            replyMarkup: nil,
            replyTo: nil,
            restrictionReason: "",
            schedulingState: nil,
            selfDestructIn: 0,
            selfDestructTime: 0,
            senderId: .messageSenderChat(.init(chatId: 0)),
            sendingState: nil,
            unreadReactions: [],
            viaBotUserId: 0
        )
    }
}

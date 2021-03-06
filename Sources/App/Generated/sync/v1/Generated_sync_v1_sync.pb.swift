// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: sync/v1/sync.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Authentication data that will be sent in a `harmonytypes.v1.Token`.
struct Protocol_Sync_V1_AuthData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The server ID of the server initiating the transaction. For Pull,
  /// this tells the server being connected to which homeservers' events it should send.
  /// For Push, this tells the server being connected to which homeservers' events it is
  /// receiving.
  var serverID: String = String()

  /// The UTC UNIX time in seconds of when the request is started. Servers should reject
  /// tokens with a time too far from the current time, at their discretion. A recommended
  /// variance is 1 minute.
  var time: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Object representing a postbox event.
struct Protocol_Sync_V1_Event {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The kind and data of this event.
  var kind: Protocol_Sync_V1_Event.OneOf_Kind? = nil

  /// User removed from a guild.
  var userRemovedFromGuild: Protocol_Sync_V1_Event.UserRemovedFromGuild {
    get {
      if case .userRemovedFromGuild(let v)? = kind {return v}
      return Protocol_Sync_V1_Event.UserRemovedFromGuild()
    }
    set {kind = .userRemovedFromGuild(newValue)}
  }

  /// User added to a guild.
  var userAddedToGuild: Protocol_Sync_V1_Event.UserAddedToGuild {
    get {
      if case .userAddedToGuild(let v)? = kind {return v}
      return Protocol_Sync_V1_Event.UserAddedToGuild()
    }
    set {kind = .userAddedToGuild(newValue)}
  }

  /// User invited to a guild.
  var userInvited: Protocol_Sync_V1_Event.UserInvited {
    get {
      if case .userInvited(let v)? = kind {return v}
      return Protocol_Sync_V1_Event.UserInvited()
    }
    set {kind = .userInvited(newValue)}
  }

  /// User rejected a guild invitation.
  var userRejectedInvite: Protocol_Sync_V1_Event.UserRejectedInvite {
    get {
      if case .userRejectedInvite(let v)? = kind {return v}
      return Protocol_Sync_V1_Event.UserRejectedInvite()
    }
    set {kind = .userRejectedInvite(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The kind and data of this event.
  enum OneOf_Kind: Equatable {
    /// User removed from a guild.
    case userRemovedFromGuild(Protocol_Sync_V1_Event.UserRemovedFromGuild)
    /// User added to a guild.
    case userAddedToGuild(Protocol_Sync_V1_Event.UserAddedToGuild)
    /// User invited to a guild.
    case userInvited(Protocol_Sync_V1_Event.UserInvited)
    /// User rejected a guild invitation.
    case userRejectedInvite(Protocol_Sync_V1_Event.UserRejectedInvite)

  #if !swift(>=4.1)
    static func ==(lhs: Protocol_Sync_V1_Event.OneOf_Kind, rhs: Protocol_Sync_V1_Event.OneOf_Kind) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.userRemovedFromGuild, .userRemovedFromGuild): return {
        guard case .userRemovedFromGuild(let l) = lhs, case .userRemovedFromGuild(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.userAddedToGuild, .userAddedToGuild): return {
        guard case .userAddedToGuild(let l) = lhs, case .userAddedToGuild(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.userInvited, .userInvited): return {
        guard case .userInvited(let l) = lhs, case .userInvited(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.userRejectedInvite, .userRejectedInvite): return {
        guard case .userRejectedInvite(let l) = lhs, case .userRejectedInvite(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Event sent when a user is removed from a guild.
  struct UserRemovedFromGuild {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// User ID of the user that was removed.
    var userID: UInt64 = 0

    /// Guild ID of the guild where the user was.
    var guildID: UInt64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  /// Event sent when a user is added to a guild.
  struct UserAddedToGuild {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// User ID of the user that was added.
    var userID: UInt64 = 0

    /// Guild ID of the guild where the user will be.
    var guildID: UInt64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  /// Event sent when a user is invited to a guild.
  struct UserInvited {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// User ID of the invitee.
    var userID: UInt64 = 0

    /// User ID of the user that invited.
    var inviterID: UInt64 = 0

    /// The invite for the guild.
    var inviteID: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  /// Event sent when a user rejects a guild invitation.
  struct UserRejectedInvite {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Guild ID of the guild the invitee rejected an invite for.
    var guildID: UInt64 = 0

    /// User ID of the invitee that rejected the invitation.
    var userID: UInt64 = 0

    /// Invite ID of the invite that was rejected.
    var inviteID: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}
}

/// Used in `Pull` endpoint.
struct Protocol_Sync_V1_PullRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Used in `Pull` endpoint.
struct Protocol_Sync_V1_PullResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The events that were not processed yet.
  var eventQueue: [Protocol_Sync_V1_Event] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Used in `Push` endpoint.
struct Protocol_Sync_V1_PushRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The event to push to the server.
  var event: Protocol_Sync_V1_Event {
    get {return _event ?? Protocol_Sync_V1_Event()}
    set {_event = newValue}
  }
  /// Returns true if `event` has been explicitly set.
  var hasEvent: Bool {return self._event != nil}
  /// Clears the value of `event`. Subsequent reads from it will return its default value.
  mutating func clearEvent() {self._event = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _event: Protocol_Sync_V1_Event? = nil
}

/// Used in `Push` endpoint.
struct Protocol_Sync_V1_PushResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Used in `NotifyNewId` endpoint.
struct Protocol_Sync_V1_NotifyNewIdRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The new server ID of the server.
  var newServerID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Used in `NotifyNewId` endpoint.
struct Protocol_Sync_V1_NotifyNewIdResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.sync.v1"

extension Protocol_Sync_V1_AuthData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AuthData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "server_id"),
    2: .same(proto: "time"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.serverID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.time) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.serverID.isEmpty {
      try visitor.visitSingularStringField(value: self.serverID, fieldNumber: 1)
    }
    if self.time != 0 {
      try visitor.visitSingularUInt64Field(value: self.time, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_AuthData, rhs: Protocol_Sync_V1_AuthData) -> Bool {
    if lhs.serverID != rhs.serverID {return false}
    if lhs.time != rhs.time {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_Event: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Event"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_removed_from_guild"),
    2: .standard(proto: "user_added_to_guild"),
    3: .standard(proto: "user_invited"),
    4: .standard(proto: "user_rejected_invite"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Protocol_Sync_V1_Event.UserRemovedFromGuild?
        var hadOneofValue = false
        if let current = self.kind {
          hadOneofValue = true
          if case .userRemovedFromGuild(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.kind = .userRemovedFromGuild(v)
        }
      }()
      case 2: try {
        var v: Protocol_Sync_V1_Event.UserAddedToGuild?
        var hadOneofValue = false
        if let current = self.kind {
          hadOneofValue = true
          if case .userAddedToGuild(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.kind = .userAddedToGuild(v)
        }
      }()
      case 3: try {
        var v: Protocol_Sync_V1_Event.UserInvited?
        var hadOneofValue = false
        if let current = self.kind {
          hadOneofValue = true
          if case .userInvited(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.kind = .userInvited(v)
        }
      }()
      case 4: try {
        var v: Protocol_Sync_V1_Event.UserRejectedInvite?
        var hadOneofValue = false
        if let current = self.kind {
          hadOneofValue = true
          if case .userRejectedInvite(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.kind = .userRejectedInvite(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.kind {
    case .userRemovedFromGuild?: try {
      guard case .userRemovedFromGuild(let v)? = self.kind else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .userAddedToGuild?: try {
      guard case .userAddedToGuild(let v)? = self.kind else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .userInvited?: try {
      guard case .userInvited(let v)? = self.kind else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .userRejectedInvite?: try {
      guard case .userRejectedInvite(let v)? = self.kind else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_Event, rhs: Protocol_Sync_V1_Event) -> Bool {
    if lhs.kind != rhs.kind {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_Event.UserRemovedFromGuild: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Protocol_Sync_V1_Event.protoMessageName + ".UserRemovedFromGuild"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "guild_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.userID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_Event.UserRemovedFromGuild, rhs: Protocol_Sync_V1_Event.UserRemovedFromGuild) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.guildID != rhs.guildID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_Event.UserAddedToGuild: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Protocol_Sync_V1_Event.protoMessageName + ".UserAddedToGuild"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "guild_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.userID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_Event.UserAddedToGuild, rhs: Protocol_Sync_V1_Event.UserAddedToGuild) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.guildID != rhs.guildID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_Event.UserInvited: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Protocol_Sync_V1_Event.protoMessageName + ".UserInvited"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "inviter_id"),
    3: .standard(proto: "invite_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.userID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.inviterID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.inviteID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if self.inviterID != 0 {
      try visitor.visitSingularUInt64Field(value: self.inviterID, fieldNumber: 2)
    }
    if !self.inviteID.isEmpty {
      try visitor.visitSingularStringField(value: self.inviteID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_Event.UserInvited, rhs: Protocol_Sync_V1_Event.UserInvited) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.inviterID != rhs.inviterID {return false}
    if lhs.inviteID != rhs.inviteID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_Event.UserRejectedInvite: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Protocol_Sync_V1_Event.protoMessageName + ".UserRejectedInvite"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "guild_id"),
    2: .standard(proto: "user_id"),
    3: .standard(proto: "invite_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.guildID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.userID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.inviteID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.guildID != 0 {
      try visitor.visitSingularUInt64Field(value: self.guildID, fieldNumber: 1)
    }
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 2)
    }
    if !self.inviteID.isEmpty {
      try visitor.visitSingularStringField(value: self.inviteID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_Event.UserRejectedInvite, rhs: Protocol_Sync_V1_Event.UserRejectedInvite) -> Bool {
    if lhs.guildID != rhs.guildID {return false}
    if lhs.userID != rhs.userID {return false}
    if lhs.inviteID != rhs.inviteID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_PullRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PullRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_PullRequest, rhs: Protocol_Sync_V1_PullRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_PullResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PullResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "event_queue"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.eventQueue) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.eventQueue.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.eventQueue, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_PullResponse, rhs: Protocol_Sync_V1_PullResponse) -> Bool {
    if lhs.eventQueue != rhs.eventQueue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_PushRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PushRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "event"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._event) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._event {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_PushRequest, rhs: Protocol_Sync_V1_PushRequest) -> Bool {
    if lhs._event != rhs._event {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_PushResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PushResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_PushResponse, rhs: Protocol_Sync_V1_PushResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_NotifyNewIdRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NotifyNewIdRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "new_server_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.newServerID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.newServerID.isEmpty {
      try visitor.visitSingularStringField(value: self.newServerID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_NotifyNewIdRequest, rhs: Protocol_Sync_V1_NotifyNewIdRequest) -> Bool {
    if lhs.newServerID != rhs.newServerID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Sync_V1_NotifyNewIdResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NotifyNewIdResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Sync_V1_NotifyNewIdResponse, rhs: Protocol_Sync_V1_NotifyNewIdResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

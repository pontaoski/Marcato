// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: profile/v1/stream.proto
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

/// Event sent when a user's profile is updated.
///
/// Servers should sent this event only to users that can "see" (eg. they are
/// in the same guild) the user this event was triggered by.
struct Protocol_Profile_V1_ProfileUpdated {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// User ID of the user that had it's profile updated.
  var userID: UInt64 = 0

  /// New username for this user.
  var newUsername: String {
    get {return _newUsername ?? String()}
    set {_newUsername = newValue}
  }
  /// Returns true if `newUsername` has been explicitly set.
  var hasNewUsername: Bool {return self._newUsername != nil}
  /// Clears the value of `newUsername`. Subsequent reads from it will return its default value.
  mutating func clearNewUsername() {self._newUsername = nil}

  /// New avatar for this user.
  var newAvatar: String {
    get {return _newAvatar ?? String()}
    set {_newAvatar = newValue}
  }
  /// Returns true if `newAvatar` has been explicitly set.
  var hasNewAvatar: Bool {return self._newAvatar != nil}
  /// Clears the value of `newAvatar`. Subsequent reads from it will return its default value.
  mutating func clearNewAvatar() {self._newAvatar = nil}

  /// New status for this user.
  var newStatus: Protocol_Profile_V1_UserStatus {
    get {return _newStatus ?? .offlineUnspecified}
    set {_newStatus = newValue}
  }
  /// Returns true if `newStatus` has been explicitly set.
  var hasNewStatus: Bool {return self._newStatus != nil}
  /// Clears the value of `newStatus`. Subsequent reads from it will return its default value.
  mutating func clearNewStatus() {self._newStatus = nil}

  /// New is bot or not for this user.
  var newIsBot: Bool {
    get {return _newIsBot ?? false}
    set {_newIsBot = newValue}
  }
  /// Returns true if `newIsBot` has been explicitly set.
  var hasNewIsBot: Bool {return self._newIsBot != nil}
  /// Clears the value of `newIsBot`. Subsequent reads from it will return its default value.
  mutating func clearNewIsBot() {self._newIsBot = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _newUsername: String? = nil
  fileprivate var _newAvatar: String? = nil
  fileprivate var _newStatus: Protocol_Profile_V1_UserStatus? = nil
  fileprivate var _newIsBot: Bool? = nil
}

/// Describes an emote service event.
struct Protocol_Profile_V1_StreamEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The event type.
  var event: Protocol_Profile_V1_StreamEvent.OneOf_Event? = nil

  /// Send the profile updated event.
  var profileUpdated: Protocol_Profile_V1_ProfileUpdated {
    get {
      if case .profileUpdated(let v)? = event {return v}
      return Protocol_Profile_V1_ProfileUpdated()
    }
    set {event = .profileUpdated(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The event type.
  enum OneOf_Event: Equatable {
    /// Send the profile updated event.
    case profileUpdated(Protocol_Profile_V1_ProfileUpdated)

  #if !swift(>=4.1)
    static func ==(lhs: Protocol_Profile_V1_StreamEvent.OneOf_Event, rhs: Protocol_Profile_V1_StreamEvent.OneOf_Event) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.profileUpdated, .profileUpdated): return {
        guard case .profileUpdated(let l) = lhs, case .profileUpdated(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.profile.v1"

extension Protocol_Profile_V1_ProfileUpdated: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ProfileUpdated"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
    2: .standard(proto: "new_username"),
    3: .standard(proto: "new_avatar"),
    4: .standard(proto: "new_status"),
    5: .standard(proto: "new_is_bot"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.userID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._newUsername) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._newAvatar) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self._newStatus) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self._newIsBot) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularUInt64Field(value: self.userID, fieldNumber: 1)
    }
    if let v = self._newUsername {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._newAvatar {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }
    if let v = self._newStatus {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 4)
    }
    if let v = self._newIsBot {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Profile_V1_ProfileUpdated, rhs: Protocol_Profile_V1_ProfileUpdated) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs._newUsername != rhs._newUsername {return false}
    if lhs._newAvatar != rhs._newAvatar {return false}
    if lhs._newStatus != rhs._newStatus {return false}
    if lhs._newIsBot != rhs._newIsBot {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Profile_V1_StreamEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StreamEvent"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    14: .standard(proto: "profile_updated"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 14: try {
        var v: Protocol_Profile_V1_ProfileUpdated?
        var hadOneofValue = false
        if let current = self.event {
          hadOneofValue = true
          if case .profileUpdated(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.event = .profileUpdated(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .profileUpdated(let v)? = self.event {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Profile_V1_StreamEvent, rhs: Protocol_Profile_V1_StreamEvent) -> Bool {
    if lhs.event != rhs.event {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

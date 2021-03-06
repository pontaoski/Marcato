// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: emote/v1/stream.proto
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

/// Event sent when an emote pack's information is changed.
///
/// Should only be sent to users who have the pack equipped.
struct Protocol_Emote_V1_EmotePackUpdated {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ID of the pack that was updated.
  var packID: UInt64 = 0

  /// New pack name of the pack.
  var newPackName: String {
    get {return _newPackName ?? String()}
    set {_newPackName = newValue}
  }
  /// Returns true if `newPackName` has been explicitly set.
  var hasNewPackName: Bool {return self._newPackName != nil}
  /// Clears the value of `newPackName`. Subsequent reads from it will return its default value.
  mutating func clearNewPackName() {self._newPackName = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _newPackName: String? = nil
}

/// Event sent when an emote pack is deleted.
///
/// Should only be sent to users who have the pack equipped.
/// Should also be sent if a user dequips an emote pack, only to the user that dequipped it.
struct Protocol_Emote_V1_EmotePackDeleted {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ID of the pack that was deleted.
  var packID: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Event sent when an emote pack is added.
///
/// Should only be sent to the user who equipped the pack.
struct Protocol_Emote_V1_EmotePackAdded {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Emote pack that was equipped by the user.
  var pack: Protocol_Emote_V1_EmotePack {
    get {return _pack ?? Protocol_Emote_V1_EmotePack()}
    set {_pack = newValue}
  }
  /// Returns true if `pack` has been explicitly set.
  var hasPack: Bool {return self._pack != nil}
  /// Clears the value of `pack`. Subsequent reads from it will return its default value.
  mutating func clearPack() {self._pack = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _pack: Protocol_Emote_V1_EmotePack? = nil
}

/// Event sent when an emote pack's emotes were changed.
///
/// Should only be sent to users who have the pack equipped.
struct Protocol_Emote_V1_EmotePackEmotesUpdated {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ID of the pack to update the emotes of.
  var packID: UInt64 = 0

  /// The added emotes.
  var addedEmotes: [Protocol_Emote_V1_Emote] = []

  /// The names of the deleted emotes.
  var deletedEmotes: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Describes an emote service event.
struct Protocol_Emote_V1_StreamEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The event type.
  var event: Protocol_Emote_V1_StreamEvent.OneOf_Event? = nil

  /// Send the emote pack added event.
  var emotePackAdded: Protocol_Emote_V1_EmotePackAdded {
    get {
      if case .emotePackAdded(let v)? = event {return v}
      return Protocol_Emote_V1_EmotePackAdded()
    }
    set {event = .emotePackAdded(newValue)}
  }

  /// Send the emote pack updated event.
  var emotePackUpdated: Protocol_Emote_V1_EmotePackUpdated {
    get {
      if case .emotePackUpdated(let v)? = event {return v}
      return Protocol_Emote_V1_EmotePackUpdated()
    }
    set {event = .emotePackUpdated(newValue)}
  }

  /// Send the emote pack deleted event.
  var emotePackDeleted: Protocol_Emote_V1_EmotePackDeleted {
    get {
      if case .emotePackDeleted(let v)? = event {return v}
      return Protocol_Emote_V1_EmotePackDeleted()
    }
    set {event = .emotePackDeleted(newValue)}
  }

  /// Send the emote pack emotes updated event.
  var emotePackEmotesUpdated: Protocol_Emote_V1_EmotePackEmotesUpdated {
    get {
      if case .emotePackEmotesUpdated(let v)? = event {return v}
      return Protocol_Emote_V1_EmotePackEmotesUpdated()
    }
    set {event = .emotePackEmotesUpdated(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The event type.
  enum OneOf_Event: Equatable {
    /// Send the emote pack added event.
    case emotePackAdded(Protocol_Emote_V1_EmotePackAdded)
    /// Send the emote pack updated event.
    case emotePackUpdated(Protocol_Emote_V1_EmotePackUpdated)
    /// Send the emote pack deleted event.
    case emotePackDeleted(Protocol_Emote_V1_EmotePackDeleted)
    /// Send the emote pack emotes updated event.
    case emotePackEmotesUpdated(Protocol_Emote_V1_EmotePackEmotesUpdated)

  #if !swift(>=4.1)
    static func ==(lhs: Protocol_Emote_V1_StreamEvent.OneOf_Event, rhs: Protocol_Emote_V1_StreamEvent.OneOf_Event) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.emotePackAdded, .emotePackAdded): return {
        guard case .emotePackAdded(let l) = lhs, case .emotePackAdded(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.emotePackUpdated, .emotePackUpdated): return {
        guard case .emotePackUpdated(let l) = lhs, case .emotePackUpdated(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.emotePackDeleted, .emotePackDeleted): return {
        guard case .emotePackDeleted(let l) = lhs, case .emotePackDeleted(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.emotePackEmotesUpdated, .emotePackEmotesUpdated): return {
        guard case .emotePackEmotesUpdated(let l) = lhs, case .emotePackEmotesUpdated(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.emote.v1"

extension Protocol_Emote_V1_EmotePackUpdated: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmotePackUpdated"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pack_id"),
    2: .standard(proto: "new_pack_name"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.packID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._newPackName) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.packID != 0 {
      try visitor.visitSingularUInt64Field(value: self.packID, fieldNumber: 1)
    }
    if let v = self._newPackName {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Emote_V1_EmotePackUpdated, rhs: Protocol_Emote_V1_EmotePackUpdated) -> Bool {
    if lhs.packID != rhs.packID {return false}
    if lhs._newPackName != rhs._newPackName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Emote_V1_EmotePackDeleted: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmotePackDeleted"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pack_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.packID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.packID != 0 {
      try visitor.visitSingularUInt64Field(value: self.packID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Emote_V1_EmotePackDeleted, rhs: Protocol_Emote_V1_EmotePackDeleted) -> Bool {
    if lhs.packID != rhs.packID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Emote_V1_EmotePackAdded: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmotePackAdded"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pack"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._pack) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._pack {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Emote_V1_EmotePackAdded, rhs: Protocol_Emote_V1_EmotePackAdded) -> Bool {
    if lhs._pack != rhs._pack {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Emote_V1_EmotePackEmotesUpdated: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EmotePackEmotesUpdated"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pack_id"),
    2: .standard(proto: "added_emotes"),
    3: .standard(proto: "deleted_emotes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.packID) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.addedEmotes) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.deletedEmotes) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.packID != 0 {
      try visitor.visitSingularUInt64Field(value: self.packID, fieldNumber: 1)
    }
    if !self.addedEmotes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.addedEmotes, fieldNumber: 2)
    }
    if !self.deletedEmotes.isEmpty {
      try visitor.visitRepeatedStringField(value: self.deletedEmotes, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Emote_V1_EmotePackEmotesUpdated, rhs: Protocol_Emote_V1_EmotePackEmotesUpdated) -> Bool {
    if lhs.packID != rhs.packID {return false}
    if lhs.addedEmotes != rhs.addedEmotes {return false}
    if lhs.deletedEmotes != rhs.deletedEmotes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Emote_V1_StreamEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StreamEvent"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "emote_pack_added"),
    2: .standard(proto: "emote_pack_updated"),
    3: .standard(proto: "emote_pack_deleted"),
    4: .standard(proto: "emote_pack_emotes_updated"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Protocol_Emote_V1_EmotePackAdded?
        var hadOneofValue = false
        if let current = self.event {
          hadOneofValue = true
          if case .emotePackAdded(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.event = .emotePackAdded(v)
        }
      }()
      case 2: try {
        var v: Protocol_Emote_V1_EmotePackUpdated?
        var hadOneofValue = false
        if let current = self.event {
          hadOneofValue = true
          if case .emotePackUpdated(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.event = .emotePackUpdated(v)
        }
      }()
      case 3: try {
        var v: Protocol_Emote_V1_EmotePackDeleted?
        var hadOneofValue = false
        if let current = self.event {
          hadOneofValue = true
          if case .emotePackDeleted(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.event = .emotePackDeleted(v)
        }
      }()
      case 4: try {
        var v: Protocol_Emote_V1_EmotePackEmotesUpdated?
        var hadOneofValue = false
        if let current = self.event {
          hadOneofValue = true
          if case .emotePackEmotesUpdated(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.event = .emotePackEmotesUpdated(v)
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
    switch self.event {
    case .emotePackAdded?: try {
      guard case .emotePackAdded(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .emotePackUpdated?: try {
      guard case .emotePackUpdated(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .emotePackDeleted?: try {
      guard case .emotePackDeleted(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .emotePackEmotesUpdated?: try {
      guard case .emotePackEmotesUpdated(let v)? = self.event else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Protocol_Emote_V1_StreamEvent, rhs: Protocol_Emote_V1_StreamEvent) -> Bool {
    if lhs.event != rhs.event {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

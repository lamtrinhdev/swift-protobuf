// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Sources/ModuleA/a.proto
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
  struct _3: SwiftProtobuf.ProtobufAPIVersion_3 {}
  typealias Version = _3
}

public enum E: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unset // = 0
  case a // = 1
  case b // = 2

  public init() {
    self = .unset
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unset
    case 1: self = .a
    case 2: self = .b
    default: return nil
    }
  }

  public var rawValue: Int {
    switch self {
    case .unset: return 0
    case .a: return 1
    case .b: return 2
    }
  }

}

public struct A: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var e: E {
    get {return _e ?? .unset}
    set {_e = newValue}
  }
  /// Returns true if `e` has been explicitly set.
  public var hasE: Bool {return self._e != nil}
  /// Clears the value of `e`. Subsequent reads from it will return its default value.
  public mutating func clearE() {self._e = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _e: E? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension E: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "E_UNSET"),
    1: .same(proto: "E_A"),
    2: .same(proto: "E_B"),
  ]
}

extension A: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "A"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "e"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._e) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._e {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: A, rhs: A) -> Bool {
    if lhs._e != rhs._e {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
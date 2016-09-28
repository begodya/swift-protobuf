/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_no_generic_services.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  Author: kenton@google.com (Kenton Varda)

import Foundation
import SwiftProtobuf


public enum Google_Protobuf_NoGenericServicesTest_TestEnum: ProtobufEnum {
  public typealias RawValue = Int
  case foo // = 1

  public init() {
    self = .foo
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 1: self = .foo
    default: return nil
    }
  }

  public init?(name: String) {
    switch name {
    case "foo": self = .foo
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "FOO": self = .foo
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "FOO": self = .foo
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .foo: return 1
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .foo: return "\"FOO\""
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .foo: return ".foo"
      }
    }
  }

}

//  *_generic_services are false by default.
public struct Google_Protobuf_NoGenericServicesTest_TestMessage: ProtobufGeneratedMessage, ProtobufExtensibleMessage {
  public var swiftClassName: String {return "Google_Protobuf_NoGenericServicesTest_TestMessage"}
  public var protoMessageName: String {return "TestMessage"}
  public var protoPackageName: String {return "google.protobuf.no_generic_services_test"}
  public var jsonFieldNames: [String: Int] {return [
    "a": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "a": 1,
  ]}

  var unknown = ProtobufUnknownStorage()

  public var a: Int32? = nil

  public init() {}

  public init(a: Int32? = nil)
  {
    self.a = a
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeOptionalField(fieldType: ProtobufInt32.self, value: &a)
    default:
      if (1000 <= protoFieldNumber && protoFieldNumber < 536870912) {
        handled = try setter.decodeExtensionField(values: &extensionFieldValues, messageType: Google_Protobuf_NoGenericServicesTest_TestMessage.self, protoFieldNumber: protoFieldNumber)
      } else {
        handled = false
      }
    }
    if handled {
        return true
    } else {
        return try unknown.decodeField(setter: &setter)
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if let v = a {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1, protoFieldName: "a", jsonFieldName: "a", swiftFieldName: "a")
    }
    try extensionFieldValues.traverse(visitor: &visitor, start: 1000, end: 536870912)
    unknown.traverse(visitor: &visitor)
  }

  public var _protoc_generated_isEmpty: Bool {
    if a != nil {return false}
    if !unknown.isEmpty {return false}
    if !extensionFieldValues.isEmpty {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_NoGenericServicesTest_TestMessage) -> Bool {
    if ((a != nil || other.a != nil) && (a == nil || other.a == nil || a! != other.a!)) {return false}
    if unknown != other.unknown {return false}
    if extensionFieldValues != other.extensionFieldValues {return false}
    return true
  }

  private var extensionFieldValues = ProtobufExtensionFieldValueSet()

  public mutating func setExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, Google_Protobuf_NoGenericServicesTest_TestMessage>, value: F.ValueType) {
    extensionFieldValues[ext.protoFieldNumber] = ext.set(value: value)
  }

  public func getExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, Google_Protobuf_NoGenericServicesTest_TestMessage>) -> F.ValueType {
    if let fieldValue = extensionFieldValues[ext.protoFieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }
}

let Google_Protobuf_NoGenericServicesTest_TestMessage_testExtension = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufInt32>, Google_Protobuf_NoGenericServicesTest_TestMessage>(protoFieldNumber: 1000, protoFieldName: "test_extension", jsonFieldName: "testExtension", swiftFieldName: "testExtension", defaultValue: nil)

extension Google_Protobuf_NoGenericServicesTest_TestMessage {
  public var testExtension: Int32? {
    get {return getExtensionValue(ext: Google_Protobuf_NoGenericServicesTest_TestMessage_testExtension)}
    set {setExtensionValue(ext: Google_Protobuf_NoGenericServicesTest_TestMessage_testExtension, value: newValue)}
  }
}

public let Google_Protobuf_NoGenericServicesTest_UnittestNoGenericServices_Extensions: ProtobufExtensionSet = [
  Google_Protobuf_NoGenericServicesTest_TestMessage_testExtension
]

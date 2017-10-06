<sub>**STRUCT**</sub>
# OAuth2ExtensionTokenGrantStrategy

<sub>**Declaration**</sub>
```swift
public struct OAuth2ExtensionTokenGrantStrategy: OAuth2TokenGrantStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2ExtensionTokenGrantStrategy.Type
```

Attempts a token grant via  a custom extension grant as defined in
[RFC 6749 Section 4.5](https://tools.ietf.org/html/rfc6749#section-4.5)

--------------------

## Properties
### tokenGrantRequestAdditionalBodyParameters

<sub>**Declaration**</sub>
```swift
public var tokenGrantRequestAdditionalBodyParameters: [String: Any] = [:]
```

<sub>**Infered Type**</sub>
```swift
[String : Any]
```

For server applications with complex realms, additional factors or user information
may be necessary for user authentication

### requestSerializer

<sub>**Declaration**</sub>
```swift
public var requestSerializer: RequestSerializer = FormEncodedRequestSerializer()
```

<sub>**Infered Type**</sub>
```swift
RequestSerializer
```

The serializer used for token grant requests. Defaults to a FormEncodedRequestSerializer.

### responseDeserializer

<sub>**Declaration**</sub>
```swift
public var responseDeserializer: ResponseDeserializer = JSONResponseDeserializer()
```

<sub>**Infered Type**</sub>
```swift
ResponseDeserializer
```

The deserializer used for token grant responses. Defaults to a JSONResponseDeserializer.

## Methods
### init(grantType:clientConfiguration:)

<sub>**Declaration**</sub>
```swift
public init(grantType: String, clientConfiguration: OAuth2ClientConfiguration)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ExtensionTokenGrantStrategy.Type) -> (String, OAuth2ClientConfiguration) -> OAuth2ExtensionTokenGrantStrategy
```

Creates a new OAuth2ExtensionTokenGrantStrategy
- Parameters:
  - grantType: The custom grant_type
  - clientConfiguration: The configuration of the OAuth2 client

#### Parameters
| Name | Description |
| ---- | ----------- |
| *grantType* | The custom grant_type |
| *clientConfiguration* | The configuration of the OAuth2 client |

### issueToken(completion:)

<sub>**Declaration**</sub>
```swift
public func issueToken(completion: @escaping Result<BearerToken>.Block)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ExtensionTokenGrantStrategy) -> (@escaping (Result<BearerToken>) -> ()) -> ()
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *completion* | A closure that executes on token grant success/failure |

### issueToken()

<sub>**Declaration**</sub>
```swift
public func issueToken() throws -> BearerToken
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ExtensionTokenGrantStrategy) -> () throws -> BearerToken
```




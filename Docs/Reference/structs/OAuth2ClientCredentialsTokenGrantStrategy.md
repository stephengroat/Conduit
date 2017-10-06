<sub>**STRUCT**</sub>
# OAuth2ClientCredentialsTokenGrantStrategy

<sub>**Declaration**</sub>
```swift
public struct OAuth2ClientCredentialsTokenGrantStrategy: OAuth2TokenGrantStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2ClientCredentialsTokenGrantStrategy.Type
```

Attempts a token grant via the "client_credentials" implicit grant type

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
### init(clientConfiguration:)

<sub>**Declaration**</sub>
```swift
public init(clientConfiguration: OAuth2ClientConfiguration)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ClientCredentialsTokenGrantStrategy.Type) -> (OAuth2ClientConfiguration) -> OAuth2ClientCredentialsTokenGrantStrategy
```

Creates a new OAuth2ClientCredentialsTokenGrantStrategy
- Parameters:
  - clientConfiguration: The OAuth2 client configuration to authenticate with

#### Parameters
| Name | Description |
| ---- | ----------- |
| *clientConfiguration* | The OAuth2 client configuration to authenticate with |

### issueToken(completion:)

<sub>**Declaration**</sub>
```swift
public func issueToken(completion: @escaping Result<BearerToken>.Block)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ClientCredentialsTokenGrantStrategy) -> (@escaping (Result<BearerToken>) -> ()) -> ()
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
(OAuth2ClientCredentialsTokenGrantStrategy) -> () throws -> BearerToken
```




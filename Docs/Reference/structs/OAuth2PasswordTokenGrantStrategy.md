<sub>**STRUCT**</sub>
# OAuth2PasswordTokenGrantStrategy

<sub>**Declaration**</sub>
```swift
public struct OAuth2PasswordTokenGrantStrategy: OAuth2TokenGrantStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2PasswordTokenGrantStrategy.Type
```

Attempts a token grant via the "password" implicit grant type

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
### init(username:password:clientConfiguration:)

<sub>**Declaration**</sub>
```swift
public init(username: String, password: String, clientConfiguration: OAuth2ClientConfiguration)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2PasswordTokenGrantStrategy.Type) -> (String, String, OAuth2ClientConfiguration) -> OAuth2PasswordTokenGrantStrategy
```

Creates a new OAuth2PasswordTokenGrantStrategy
- Parameters:
  - username: The resource owner's username
  - password: The resource owner's password
  - clientConfiguration: The configuration of the OAuth2 client

#### Parameters
| Name | Description |
| ---- | ----------- |
| *username* | The resource owner’s username |
| *password* | The resource owner’s password |
| *clientConfiguration* | The configuration of the OAuth2 client |

### issueToken(completion:)

<sub>**Declaration**</sub>
```swift
public func issueToken(completion: @escaping Result<BearerToken>.Block)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2PasswordTokenGrantStrategy) -> (@escaping (Result<BearerToken>) -> ()) -> ()
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
(OAuth2PasswordTokenGrantStrategy) -> () throws -> BearerToken
```




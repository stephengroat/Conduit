<sub>**STRUCT**</sub>
# OAuth2AuthorizationCodeTokenGrantStrategy

<sub>**Declaration**</sub>
```swift
public struct OAuth2AuthorizationCodeTokenGrantStrategy: OAuth2TokenGrantStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationCodeTokenGrantStrategy.Type
```

Attempts a token grant via the "authorization_code" grant type

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
### init(code:redirectURI:clientConfiguration:)

<sub>**Declaration**</sub>
```swift
public init(code: String, redirectURI: String, clientConfiguration: OAuth2ClientConfiguration)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationCodeTokenGrantStrategy.Type) -> (String, String, OAuth2ClientConfiguration) -> OAuth2AuthorizationCodeTokenGrantStrategy
```

Creates a new OAuth2AuthorizationCodeTokenGrantStrategy
- Parameters:
  - code: The authorization_code returned from a successful authorization request
  - redirectURI: The original authorization request's redirect_uri
  - clientConfiguration: The configuration of the OAuth2 client

#### Parameters
| Name | Description |
| ---- | ----------- |
| *code* | The authorization_code returned from a successful authorization request |
| *redirectURI* | The original authorization request’s redirect_uri |
| *clientConfiguration* | The configuration of the OAuth2 client |

### issueToken(completion:)

<sub>**Declaration**</sub>
```swift
public func issueToken(completion: @escaping Result<BearerToken>.Block)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationCodeTokenGrantStrategy) -> (@escaping (Result<BearerToken>) -> ()) -> ()
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
(OAuth2AuthorizationCodeTokenGrantStrategy) -> () throws -> BearerToken
```




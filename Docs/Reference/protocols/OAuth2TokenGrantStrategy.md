<sub>**PROTOCOL**</sub>
# OAuth2TokenGrantStrategy

<sub>**Declaration**</sub>
```swift
public protocol OAuth2TokenGrantStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2TokenGrantStrategy.Protocol
```

Defines a type that attempts a token grant from an OAuth2 server application

--------------------



## Methods
### issueToken(completion:)

<sub>**Declaration**</sub>
```swift
func issueToken(completion: @escaping Result<BearerToken>.Block)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : OAuth2TokenGrantStrategy> (Self) -> (@escaping (Result<BearerToken>) -> ()) -> ()
```

Attempts to issue a token with the given grant type

- Parameters:
  - completion: A closure that executes on token grant success/failure

#### Parameters
| Name | Description |
| ---- | ----------- |
| *completion* | A closure that executes on token grant success/failure |

### issueToken()

<sub>**Declaration**</sub>
```swift
func issueToken() throws -> BearerToken
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : OAuth2TokenGrantStrategy> (Self) -> () throws -> BearerToken
```

Attempts to issue a token with the given grant type

- Returns: Access token
- Throws: Error if token grant failed


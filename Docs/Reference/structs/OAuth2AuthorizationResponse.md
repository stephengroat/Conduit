<sub>**STRUCT**</sub>
# OAuth2AuthorizationResponse

<sub>**Declaration**</sub>
```swift
public struct OAuth2AuthorizationResponse
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationResponse.Type
```

A successful grant of access from an authorization request

--------------------

## Properties
### code

<sub>**Declaration**</sub>
```swift
public let code: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The authorization code to be supplied to the authorization_code grant

### state

<sub>**Declaration**</sub>
```swift
public let state: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

An opaque value used by the client to maintain state between request and the
callback. This is primarily used to prevent CSRF attacks.

## Methods
### init(code:state:)

<sub>**Declaration**</sub>
```swift
public init(code: String, state: String? = nil)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationResponse.Type) -> (String, String?) -> OAuth2AuthorizationResponse
```

Creates a new OAuth2AuthorizationResponse
- Parameters:
  - code: The authorization code to be supplied to the authorization_code grant
  - state: (Optional) An opaque value used by the client to maintain state between request and the
           callback. This is primarily used to prevent CSRF attacks.

#### Parameters
| Name | Description |
| ---- | ----------- |
| *code* | The authorization code to be supplied to the authorization_code grant |
| *state* | (Optional) An opaque value used by the client to maintain state between request and the callback. This is primarily used to prevent CSRF attacks. |
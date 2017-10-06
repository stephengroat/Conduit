<sub>**ENUM**</sub>
# OAuth2AuthorizationError

<sub>**Declaration**</sub>
```swift
public enum OAuth2AuthorizationError: Error
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationError.Type
```

An error that occured during a request for authorization, as
defined by RFC6749 4.1.2.1

--------------------

## Cases
### invalidRequest

<sub>**Declaration**</sub>
```swift
case invalidRequest
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The request has invalid/missing parameters or is otherwise malformed

### unauthorizedClient

<sub>**Declaration**</sub>
```swift
case unauthorizedClient
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The client is not authorized for this request

### accessDenied

<sub>**Declaration**</sub>
```swift
case accessDenied
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The resource owner or authorization server denied the request

### unsupportedResponseType

<sub>**Declaration**</sub>
```swift
case unsupportedResponseType
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The authorization server does not support this request

### invalidScope

<sub>**Declaration**</sub>
```swift
case invalidScope
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The requested scope is invalid, unknown, or malformed

### serverError

<sub>**Declaration**</sub>
```swift
case serverError
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The server encountered an unexpected server error (HTTP redirects are not
allowed when the HTTP status code falls in the 500 range)

### temporarilyUnavailable

<sub>**Declaration**</sub>
```swift
case temporarilyUnavailable
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The authorization server is temporarily unable to handle requests (HTTP redirects
are not allowed when the HTTP status code falls in the 500 range)

### cancelled

<sub>**Declaration**</sub>
```swift
case cancelled
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

The user cancelled the request

### unknown

<sub>**Declaration**</sub>
```swift
case unknown
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationError.Type) -> OAuth2AuthorizationError
```

An unknown error occurred during or after the request




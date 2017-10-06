<sub>**STRUCT**</sub>
# OAuth2AuthorizationRequest

<sub>**Declaration**</sub>
```swift
public struct OAuth2AuthorizationRequest
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationRequest.Type
```

Incites a request for authorization from a resource owner

--------------------

## Properties
### clientIdentifier

<sub>**Declaration**</sub>
```swift
public let clientIdentifier: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The OAuth2 client's client_id

### clientSecret

<sub>**Declaration**</sub>
```swift
public var clientSecret: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The OAuth2 client's client_secret

### redirectURI

<sub>**Declaration**</sub>
```swift
public var redirectURI: URL?
```

<sub>**Infered Type**</sub>
```swift
URL?
```

The OAuth2 client's redirect_uri. This will usually be configured to a custom URL scheme,
but dynamic deeplinks or client-server redirects are also possible.

### scope

<sub>**Declaration**</sub>
```swift
public var scope: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The OAuth2 client's requested scope

### state

<sub>**Declaration**</sub>
```swift
public var state: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

An opaque value used by the client to maintain state between request and the
callback. This is primarily used to prevent CSRF attacks.

### additionalParameters

<sub>**Declaration**</sub>
```swift
public var additionalParameters: [String: String]?
```

<sub>**Infered Type**</sub>
```swift
[String : String]?
```

Extension parameters that may be required or otherwise defined by the specific OAuth2 server

## Methods
### init(clientIdentifier:)

<sub>**Declaration**</sub>
```swift
public init(clientIdentifier: String)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationRequest.Type) -> (String) -> OAuth2AuthorizationRequest
```

Creates a new OAuth2AuthorizationRequest
- Parameters:
  - clientIdentifier: The OAuth2 client's client_id

#### Parameters
| Name | Description |
| ---- | ----------- |
| *clientIdentifier* | The OAuth2 client’s client_id |
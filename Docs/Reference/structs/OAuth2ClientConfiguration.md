<sub>**STRUCT**</sub>
# OAuth2ClientConfiguration

<sub>**Declaration**</sub>
```swift
public struct OAuth2ClientConfiguration
```

<sub>**Infered Type**</sub>
```swift
OAuth2ClientConfiguration.Type
```

Describes the configuration of an OAuth2 client, which is usually an app or app extension

--------------------

## Properties
### clientIdentifier

<sub>**Declaration**</sub>
```swift
public var clientIdentifier: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The OAuth2 client identifier

### clientSecret

<sub>**Declaration**</sub>
```swift
public var clientSecret: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The OAuth2 client secret

### guestUsername

<sub>**Declaration**</sub>
```swift
public var guestUsername: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The guest user's username, if one exists or is needed for client-level authorization

### guestPassword

<sub>**Declaration**</sub>
```swift
public var guestPassword: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The guest user's password, if one exists or is needed for client-level authorization

### environment

<sub>**Declaration**</sub>
```swift
public var environment: OAuth2ServerEnvironment
```

<sub>**Infered Type**</sub>
```swift
OAuth2ServerEnvironment
```

The OAuth2 server application environment that the client communicates with

## Methods
### init(clientIdentifier:clientSecret:environment:guestUsername:guestPassword:)

<sub>**Declaration**</sub>
```swift
public init(clientIdentifier: String,
                clientSecret: String,
                environment: OAuth2ServerEnvironment,
                guestUsername: String? = nil,
                guestPassword: String? = nil)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ClientConfiguration.Type) -> (String, String, OAuth2ServerEnvironment, String?, String?) -> OAuth2ClientConfiguration
```

Creates a new OAuth2ClientConfiguration
- Parameters:
  - clientIdentifier: The OAuth2 client identifier
  - clientSecret: The OAuth2 client secret
  - environment: The OAuth2 server application environment that the client communicates with
  - guestUsername: The guest user's username, if one exists or is needed for client-level authorization
  - guestPassword: The guest user's password, if one exists or is needed for client-level authorization

#### Parameters
| Name | Description |
| ---- | ----------- |
| *clientIdentifier* | The OAuth2 client identifier |
| *clientSecret* | The OAuth2 client secret |
| *environment* | The OAuth2 server application environment that the client communicates with |
| *guestUsername* | The guest user’s username, if one exists or is needed for client-level authorization |
| *guestPassword* | The guest user’s password, if one exists or is needed for client-level authorization |
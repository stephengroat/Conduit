<sub>**STRUCT**</sub>
# BearerToken

<sub>**Declaration**</sub>
```swift
public struct BearerToken: OAuth2Token, DataConvertible, Codable
```

<sub>**Infered Type**</sub>
```swift
BearerToken.Type
```

A token issued from an OAuth2 server application that represents
a possession factor (hence "bearer") for a specific user

--------------------

## Properties
### accessToken

<sub>**Declaration**</sub>
```swift
public let accessToken: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The access token

### refreshToken

<sub>**Declaration**</sub>
```swift
public let refreshToken: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The refresh token used to retrieve a new token

### expiration

<sub>**Declaration**</sub>
```swift
public let expiration: Date
```

<sub>**Infered Type**</sub>
```swift
Date
```

The time at which the token expires

### isValid

<sub>**Declaration**</sub>
```swift
public var isValid: Bool
```

<sub>**Infered Type**</sub>
```swift
Bool
```



### authorizationHeaderValue

<sub>**Declaration**</sub>
```swift
public var authorizationHeaderValue: String
```

<sub>**Infered Type**</sub>
```swift
String
```



## Methods
### init(accessToken:refreshToken:expiration:)

<sub>**Declaration**</sub>
```swift
public init(accessToken: String, refreshToken: String? = nil, expiration: Date)
```

<sub>**Infered Type**</sub>
```swift
(BearerToken.Type) -> (String, String?, Date) -> BearerToken
```

Creates a new BearerToken
- Parameters:
  - accessToken: The access_token
  - refreshToken: (Optional) The refresh_token
  - expiration: The access_token expiration date

#### Parameters
| Name | Description |
| ---- | ----------- |
| *accessToken* | The access_token |
| *refreshToken* | (Optional) The refresh_token |
| *expiration* | The access_token expiration date |
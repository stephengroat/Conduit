<sub>**CLASS**</sub>
# BearerOAuth2Token

<sub>**Declaration**</sub>
```swift
public class BearerOAuth2Token: NSObject, NSCoding, DataConvertible, OAuth2Token
```

<sub>**Infered Type**</sub>
```swift
BearerOAuth2Token.Type
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



### debugDescription

<sub>**Declaration**</sub>
```swift
public override var debugDescription: String
```

<sub>**Infered Type**</sub>
```swift
String
```



### converted

<sub>**Declaration**</sub>
```swift
public var converted: BearerToken
```

<sub>**Infered Type**</sub>
```swift
BearerToken
```



## Methods
### init(accessToken:refreshToken:expiration:)

<sub>**Declaration**</sub>
```swift
public init(accessToken: String, refreshToken: String? = nil, expiration: Date)
```

<sub>**Infered Type**</sub>
```swift
(BearerOAuth2Token.Type) -> (String, String?, Date) -> BearerOAuth2Token
```

Creates a new BearerOAuth2Token
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

### init(coder:)

<sub>**Declaration**</sub>
```swift
public required convenience init?(coder aDecoder: NSCoder)
```

<sub>**Infered Type**</sub>
```swift
(BearerOAuth2Token.Type) -> (NSCoder) -> BearerOAuth2Token?
```





### encode(with:)

<sub>**Declaration**</sub>
```swift
public func encode(with aCoder: NSCoder)
```

<sub>**Infered Type**</sub>
```swift
(BearerOAuth2Token) -> (NSCoder) -> ()
```




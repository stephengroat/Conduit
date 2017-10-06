<sub>**CLASS**</sub>
# BasicToken

<sub>**Declaration**</sub>
```swift
public class BasicToken: OAuth2Token
```

<sub>**Infered Type**</sub>
```swift
BasicToken.Type
```

A token that encapsulates a user identifier and a password, most often
used for authenticating a client against a server realm

--------------------

## Properties
### isValid

<sub>**Declaration**</sub>
```swift
public var isValid: Bool = true
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
### init(username:password:)

<sub>**Declaration**</sub>
```swift
public init(username: String, password: String)
```

<sub>**Infered Type**</sub>
```swift
(BasicToken.Type) -> (String, String) -> BasicToken
```

Creates a new BasicToken
- Parameters:
  - username: The plaintext username
  - password: The plaintext password

#### Parameters
| Name | Description |
| ---- | ----------- |
| *username* | The plaintext username |
| *password* | The plaintext password |
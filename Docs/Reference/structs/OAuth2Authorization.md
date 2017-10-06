<sub>**STRUCT**</sub>
# OAuth2Authorization

<sub>**Declaration**</sub>
```swift
public struct OAuth2Authorization
```

<sub>**Infered Type**</sub>
```swift
OAuth2Authorization.Type
```

Describes the type and level of authorization needed for a request

--------------------



## Methods
### init(type:level:)

<sub>**Declaration**</sub>
```swift
public init(type: AuthorizationType, level: AuthorizationLevel)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Authorization.Type) -> (OAuth2Authorization.AuthorizationType, OAuth2Authorization.AuthorizationLevel) -> OAuth2Authorization
```

Creats a new OAuth2Authorization
- Parameters:
  - type: The authorization token type
  - level: The level of authorization needed for the request

#### Parameters
| Name | Description |
| ---- | ----------- |
| *type* | The authorization token type |
| *level* | The level of authorization needed for the request |
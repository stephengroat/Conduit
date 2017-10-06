<sub>**CLASS**</sub>
# OAuth2TokenMemoryStore

<sub>**Declaration**</sub>
```swift
public class OAuth2TokenMemoryStore: OAuth2TokenStore
```

<sub>**Infered Type**</sub>
```swift
OAuth2TokenMemoryStore.Type
```

An in-memory token store that lives as long as the consuming executable

--------------------



## Methods
### init()

<sub>**Declaration**</sub>
```swift
public init()
```

<sub>**Infered Type**</sub>
```swift
(OAuth2TokenMemoryStore.Type) -> () -> OAuth2TokenMemoryStore
```

Creates a new OAuth2TokenMemoryStore



### store(token:for:with:)

<sub>**Declaration**</sub>
```swift
public func store<Token: OAuth2Token & DataConvertible>(token: Token?, for client: OAuth2ClientConfiguration,
                                                            with authorization: OAuth2Authorization) -> Bool
```

<sub>**Infered Type**</sub>
```swift
<Token where Token : DataConvertible, Token : OAuth2Token> (OAuth2TokenMemoryStore) -> (Token?, OAuth2ClientConfiguration, OAuth2Authorization) -> Bool
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *token* | The OAuth2 token to be stored, or nil if it needs to be deleted |
| *client* | Describes the token’s OAuth2 client |
| *authorization* | The type and level of authorization that the token is used for |

### tokenFor(client:authorization:)

<sub>**Declaration**</sub>
```swift
public func tokenFor<Token: OAuth2Token & DataConvertible>(client: OAuth2ClientConfiguration,
                                                               authorization: OAuth2Authorization) -> Token?
```

<sub>**Infered Type**</sub>
```swift
<Token where Token : DataConvertible, Token : OAuth2Token> (OAuth2TokenMemoryStore) -> (OAuth2ClientConfiguration, OAuth2Authorization) -> Token?
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *client* | Describes the token’s OAuth2 client |
| *authorization* | The type and level of authorization that the token is used for |
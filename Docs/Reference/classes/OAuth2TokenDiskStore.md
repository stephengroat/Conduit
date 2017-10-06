<sub>**CLASS**</sub>
# OAuth2TokenDiskStore

<sub>**Declaration**</sub>
```swift
public class OAuth2TokenDiskStore: OAuth2TokenStore
```

<sub>**Infered Type**</sub>
```swift
OAuth2TokenDiskStore.Type
```

Stores and retrieves OAuth2 tokens from local storage (unencrypted)

--------------------



## Methods
### init(storageMethod:)

<sub>**Declaration**</sub>
```swift
public init(storageMethod: StorageMethod)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2TokenDiskStore.Type) -> (OAuth2TokenDiskStore.StorageMethod) -> OAuth2TokenDiskStore
```

Creates a new OAuth2TokenDiskStore
- Parameters:
  - storageMethod: The strategy by which the token is stored locally

#### Parameters
| Name | Description |
| ---- | ----------- |
| *storageMethod* | The strategy by which the token is stored locally |

### store(token:for:with:)

<sub>**Declaration**</sub>
```swift
public func store<Token: OAuth2Token & DataConvertible>(token: Token?, for client: OAuth2ClientConfiguration,
                                                            with authorization: OAuth2Authorization) -> Bool
```

<sub>**Infered Type**</sub>
```swift
<Token where Token : DataConvertible, Token : OAuth2Token> (OAuth2TokenDiskStore) -> (Token?, OAuth2ClientConfiguration, OAuth2Authorization) -> Bool
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
<Token where Token : DataConvertible, Token : OAuth2Token> (OAuth2TokenDiskStore) -> (OAuth2ClientConfiguration, OAuth2Authorization) -> Token?
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *client* | Describes the token’s OAuth2 client |
| *authorization* | The type and level of authorization that the token is used for |
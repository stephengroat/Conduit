<sub>**STRUCT**</sub>
# OAuth2TokenKeychainStore

<sub>**Declaration**</sub>
```swift
public struct OAuth2TokenKeychainStore: OAuth2TokenStore
```

<sub>**Infered Type**</sub>
```swift
OAuth2TokenKeychainStore.Type
```

Stores and retrieves OAuth2 tokens from the device keychain

--------------------

## Properties
### keychainAccessibility

<sub>**Declaration**</sub>
```swift
public var keychainAccessibility = kSecAttrAccessibleWhenUnlocked
```

<sub>**Infered Type**</sub>
```swift
CFString
```

A keychain accessibility constant for defining when the token may be accessed or written

## Methods
### init(service:accessGroup:)

<sub>**Declaration**</sub>
```swift
public init(service: String, accessGroup: String? = nil)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2TokenKeychainStore.Type) -> (String, String?) -> OAuth2TokenKeychainStore
```

Creates a new OAuth2TokenKeychainStore
- Parameters:
  - service: The keychain service (kSecAttrService)
  - accessGroup: The keychain access group identifier (kSecAttrAccessGroup)

#### Parameters
| Name | Description |
| ---- | ----------- |
| *service* | The keychain service (kSecAttrService) |
| *accessGroup* | The keychain access group identifier (kSecAttrAccessGroup) |

### store(token:for:with:)

<sub>**Declaration**</sub>
```swift
public func store<Token: DataConvertible & OAuth2Token>(token: Token?, for client: OAuth2ClientConfiguration,
                                                            with authorization: OAuth2Authorization) -> Bool
```

<sub>**Infered Type**</sub>
```swift
<Token where Token : DataConvertible, Token : OAuth2Token> (OAuth2TokenKeychainStore) -> (Token?, OAuth2ClientConfiguration, OAuth2Authorization) -> Bool
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
<Token where Token : DataConvertible, Token : OAuth2Token> (OAuth2TokenKeychainStore) -> (OAuth2ClientConfiguration, OAuth2Authorization) -> Token?
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *client* | Describes the token’s OAuth2 client |
| *authorization* | The type and level of authorization that the token is used for |
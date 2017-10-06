<sub>**PROTOCOL**</sub>
# OAuth2TokenStore

<sub>**Declaration**</sub>
```swift
public protocol OAuth2TokenStore
```

<sub>**Infered Type**</sub>
```swift
OAuth2TokenStore.Protocol
```

A type that provides the ability to store and retrieve OAuth2 tokens

--------------------



## Methods
### store(token:for:with:)

<sub>**Declaration**</sub>
```swift
func store<Token: OAuth2Token & DataConvertible>(token: Token?, for client: OAuth2ClientConfiguration,
```

<sub>**Infered Type**</sub>
```swift
<Self, Token where Self : OAuth2TokenStore, Token : DataConvertible, Token : OAuth2Token> (Self) -> (Token?, OAuth2ClientConfiguration, OAuth2Authorization) -> Bool
```

Stores the provided token for the given OAuth2 client and authorization type
- Parameters:
    - token: The OAuth2 token to be stored, or nil if it needs to be deleted
    - client: Describes the token's OAuth2 client
    - authorization: The type and level of authorization that the token is used for
- Returns: A Bool indicating whether or not the storage or removal succeeded

#### Parameters
| Name | Description |
| ---- | ----------- |
| *token* | The OAuth2 token to be stored, or nil if it needs to be deleted |
| *client* | Describes the token’s OAuth2 client |
| *authorization* | The type and level of authorization that the token is used for |

### tokenFor(client:authorization:)

<sub>**Declaration**</sub>
```swift
func tokenFor<Token: OAuth2Token & DataConvertible>(client: OAuth2ClientConfiguration,
```

<sub>**Infered Type**</sub>
```swift
<Self, Token where Self : OAuth2TokenStore, Token : DataConvertible, Token : OAuth2Token> (Self) -> (OAuth2ClientConfiguration, OAuth2Authorization) -> Token?
```

Retrieves the stored token for the given OAuth2 client and authorization type
- Parameters:
    - client: Describes the token's OAuth2 client
    - authorization: The type and level of authorization that the token is used for
- Returns: A stored token, or nil if a token doesn't exist

#### Parameters
| Name | Description |
| ---- | ----------- |
| *client* | Describes the token’s OAuth2 client |
| *authorization* | The type and level of authorization that the token is used for |
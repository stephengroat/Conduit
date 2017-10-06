<sub>**EXTENSION**</sub>
# OAuth2TokenStore

--------------------



## Methods
### removeAllTokensFor(client:)

<sub>**Declaration**</sub>
```swift
public func removeAllTokensFor(client: OAuth2ClientConfiguration)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : OAuth2TokenStore> (Self) -> (OAuth2ClientConfiguration) -> ()
```

Removes all stored tokens for a given client
- Parameters:
    - client: Describes the token's OAuth2 client

#### Parameters
| Name | Description |
| ---- | ----------- |
| *client* | Describes the token’s OAuth2 client |

### removeTokenFor(client:authorization:)

<sub>**Declaration**</sub>
```swift
public func removeTokenFor(client: OAuth2ClientConfiguration, authorization: OAuth2Authorization)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : OAuth2TokenStore> (Self) -> (OAuth2ClientConfiguration, OAuth2Authorization) -> ()
```




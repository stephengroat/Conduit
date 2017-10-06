<sub>**ENUM**</sub>
# AuthorizationType

<sub>**Declaration**</sub>
```swift
public enum AuthorizationType: String
```

<sub>**Infered Type**</sub>
```swift
OAuth2Authorization.AuthorizationType.Type
```

The authorization token type
- Bearer: An access token issued from a server application
- Basic: A plaintext identifier and secret, usually for authenticating a client

--------------------

## Cases
### bearer

<sub>**Declaration**</sub>
```swift
case bearer
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Authorization.AuthorizationType.Type) -> OAuth2Authorization.AuthorizationType
```



### basic

<sub>**Declaration**</sub>
```swift
case basic
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Authorization.AuthorizationType.Type) -> OAuth2Authorization.AuthorizationType
```






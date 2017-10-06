<sub>**ENUM**</sub>
# AuthorizationLevel

<sub>**Declaration**</sub>
```swift
public enum AuthorizationLevel
```

<sub>**Infered Type**</sub>
```swift
OAuth2Authorization.AuthorizationLevel.Type
```

The level of authorization needed for the request
- User: Requires an authorized user
- Client: Requires the authorized client

--------------------

## Cases
### user

<sub>**Declaration**</sub>
```swift
case user
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Authorization.AuthorizationLevel.Type) -> OAuth2Authorization.AuthorizationLevel
```



### client

<sub>**Declaration**</sub>
```swift
case client
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Authorization.AuthorizationLevel.Type) -> OAuth2Authorization.AuthorizationLevel
```






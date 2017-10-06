<sub>**ENUM**</sub>
# StorageMethod

<sub>**Declaration**</sub>
```swift
public enum StorageMethod
```

<sub>**Infered Type**</sub>
```swift
OAuth2TokenDiskStore.StorageMethod.Type
```

The strategy by which the token is stored locally

--------------------

## Cases
### userDefaults

<sub>**Declaration**</sub>
```swift
case userDefaults
```

<sub>**Infered Type**</sub>
```swift
(OAuth2TokenDiskStore.StorageMethod.Type) -> OAuth2TokenDiskStore.StorageMethod
```

Stores the token to NSUserDefaults

### url

<sub>**Declaration**</sub>
```swift
case url(URL)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2TokenDiskStore.StorageMethod.Type) -> (URL) -> OAuth2TokenDiskStore.StorageMethod
```

Stores the token to the provided local file URL




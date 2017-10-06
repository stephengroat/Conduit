<sub>**CLASS**</sub>
# OAuth2AuthorizationRedirectHandler

<sub>**Declaration**</sub>
```swift
public class OAuth2AuthorizationRedirectHandler: NSObject
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationRedirectHandler.Type
```

Handles authorization redirects via custom URL schemes.
### Usage:
```
/// AppDelegate.swift

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
   OAuth2AuthorizationRedirectHandler.default.authorizationURLScheme = "x-my-custom-scheme"
   ...
   return true
}
func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
   if OAuth2AuthorizationRedirectHandler.default.handleOpen(url) {
       return true
   }
}
```

--------------------

## Properties
### authorizationURLScheme

<sub>**Declaration**</sub>
```swift
public var authorizationURLScheme: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The custom URL scheme used for handling authorization responses

## Methods
### init(authorizationURLScheme:)

<sub>**Declaration**</sub>
```swift
public init(authorizationURLScheme: String)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationRedirectHandler.Type) -> (String) -> OAuth2AuthorizationRedirectHandler
```

Creates a new OAuth2AuthorizationRedirectHandler
- Parameters:
  - authorizationURLScheme: The custom URL scheme used for handling authorization responses

#### Parameters
| Name | Description |
| ---- | ----------- |
| *authorizationURLScheme* | The custom URL scheme used for handling authorization responses |

### handleOpen(url:)

<sub>**Declaration**</sub>
```swift
public final func handleOpen(url: URL) -> Bool
```

<sub>**Infered Type**</sub>
```swift
(OAuth2AuthorizationRedirectHandler) -> (URL) -> Bool
```

Handles a custom URL scheme received through the AppDelegate
- Parameters:
  - url: The URL sent to the application

#### Parameters
| Name | Description |
| ---- | ----------- |
| *url* | The URL sent to the application |
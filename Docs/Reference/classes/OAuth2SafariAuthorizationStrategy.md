<sub>**CLASS**</sub>
# OAuth2SafariAuthorizationStrategy

<sub>**Declaration**</sub>
```swift
public class OAuth2SafariAuthorizationStrategy: NSObject, OAuth2AuthorizationStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2SafariAuthorizationStrategy.Type
```

Directs a potential resource owner to a web-based authorization request in an SFSafariViewController

--------------------

## Properties
### redirectHandler

<sub>**Declaration**</sub>
```swift
public var redirectHandler: OAuth2AuthorizationRedirectHandler = .default
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationRedirectHandler
```

The redirect handler used for authorization responses via a custom URL scheme

## Methods
### init(presentingViewController:authorizationRequestEndpoint:)

<sub>**Declaration**</sub>
```swift
public init(presentingViewController: UIViewController, authorizationRequestEndpoint: URL)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2SafariAuthorizationStrategy.Type) -> (UIViewController, URL) -> OAuth2SafariAuthorizationStrategy
```

Creates a new OAuth2SafariAuthorizationStrategy
- Parameters:
  - presentingViewController: The view controller from which to present the SFSafariViewController with an authorization request
  - authorizationRequestEndpoint: The unformatted endpoint at which authorization requests are sent

#### Parameters
| Name | Description |
| ---- | ----------- |
| *presentingViewController* | The view controller from which to present the SFSafariViewController with an authorization request |
| *authorizationRequestEndpoint* | The unformatted endpoint at which authorization requests are sent |

### authorize(request:completion:)

<sub>**Declaration**</sub>
```swift
public func authorize(request: OAuth2AuthorizationRequest, completion: @escaping Result<OAuth2AuthorizationResponse>.Block)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2SafariAuthorizationStrategy) -> (OAuth2AuthorizationRequest, @escaping (Result<OAuth2AuthorizationResponse>) -> ()) -> ()
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The request for authorization to be sent to an authorization server |
| *completion* | The completion handler that fires upon authorization completion/failure |
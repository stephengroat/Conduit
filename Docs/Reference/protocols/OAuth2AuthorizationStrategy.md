<sub>**PROTOCOL**</sub>
# OAuth2AuthorizationStrategy

<sub>**Declaration**</sub>
```swift
public protocol OAuth2AuthorizationStrategy
```

<sub>**Infered Type**</sub>
```swift
OAuth2AuthorizationStrategy.Protocol
```

Directs a resource owner to a request for authorization, where the owner determines whether and how access is permitted.
Many OAuth2 applications issue requests through a web page, while others may issue requests through proprietary native applications.

--------------------



## Methods
### authorize(request:completion:)

<sub>**Declaration**</sub>
```swift
func authorize(request: OAuth2AuthorizationRequest, completion: @escaping Result<OAuth2AuthorizationResponse>.Block)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : OAuth2AuthorizationStrategy> (Self) -> (OAuth2AuthorizationRequest, @escaping (Result<OAuth2AuthorizationResponse>) -> ()) -> ()
```

Attempts to begin an Authorization Code grant by directing the resource owner to a request for authorization (often a web page)
- Parameters:
  - request: The request for authorization to be sent to an authorization server
  - completion: The completion handler that fires upon authorization completion/failure

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The request for authorization to be sent to an authorization server |
| *completion* | The completion handler that fires upon authorization completion/failure |
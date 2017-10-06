<sub>**STRUCT**</sub>
# OAuth2RequestPipelineMiddleware

<sub>**Declaration**</sub>
```swift
public struct OAuth2RequestPipelineMiddleware: RequestPipelineMiddleware
```

<sub>**Infered Type**</sub>
```swift
OAuth2RequestPipelineMiddleware.Type
```

A middleware component for use within a URLSessionClient pipeline. Specifically,
this component will pause the pipeline once the token is no longer valid, refresh the token when needed,
and apply authorization headers to piped requests.

--------------------

## Properties
### pipelineBehaviorOptions

<sub>**Declaration**</sub>
```swift
public var pipelineBehaviorOptions: RequestPipelineBehaviorOptions
```

<sub>**Infered Type**</sub>
```swift
RequestPipelineBehaviorOptions
```



## Methods
### init(clientConfiguration:authorization:tokenStorage:)

<sub>**Declaration**</sub>
```swift
public init(clientConfiguration: OAuth2ClientConfiguration,
                authorization: OAuth2Authorization,
                tokenStorage: OAuth2TokenStore)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2RequestPipelineMiddleware.Type) -> (OAuth2ClientConfiguration, OAuth2Authorization, OAuth2TokenStore) -> OAuth2RequestPipelineMiddleware
```

Creates a new OAuth2RequestPipelineMiddleware
- Parameters:
  - clientConfiguration: The configuration of the OAuth2 client
  - authorization: The needed authorization type and level needed to decorate the request
  - tokenStorage: The storage mechanism used to retrieve and update tokens

#### Parameters
| Name | Description |
| ---- | ----------- |
| *clientConfiguration* | The configuration of the OAuth2 client |
| *authorization* | The needed authorization type and level needed to decorate the request |
| *tokenStorage* | The storage mechanism used to retrieve and update tokens |

### prepareForTransport(request:completion:)

<sub>**Declaration**</sub>
```swift
public func prepareForTransport(request: URLRequest, completion: @escaping (Result<URLRequest>) -> Void)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2RequestPipelineMiddleware) -> (URLRequest, @escaping (Result<URLRequest>) -> ()) -> ()
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The piped request |
| *completion* | A closure that pipes the middleware’s transformed URLRequest, or an error if processing failed |
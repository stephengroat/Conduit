<sub>**CLASS**</sub>
# Migrator

<sub>**Declaration**</sub>
```swift
public class Migrator
```

<sub>**Infered Type**</sub>
```swift
Auth.Migrator.Type
```

Provides an interface for migrating and adapting pre-existing application auth/networking layers.

It is important to note that any application that still requires the usage of an existing networking layer
will have to hand off token management responsibilities to Conduit. This means that any token that is
currently stored within the consuming binary will need to use it to build a new BearerToken and
store it in the appropriate OAuth2MemoryStore (often `Auth.defaultTokenStore`).

Finally, assuming any pre-existing OAuth2 code requires the stop/start of a network queue.
This class provides the ability to register hooks for token management events that occur within Auth.
An example usage looks like this:

    Auth.Migrator.registerPreFetchHook { (clientConfiguration, authorizationLevel) in
        myNetworkQueue.pause()
    }
    Auth.Migrator.registerPostFetchHook { (clientConfiguration, authorizationLevel, tokenResult) in
        // Perform any additional tasks based on pass/fail
        myNetworkQueue.resume()
    }

--------------------



## Methods
### refreshBearerTokenWithin(sessionClient:middleware:completion:)

<sub>**Declaration**</sub>
```swift
public static func refreshBearerTokenWithin(sessionClient: URLSessionClient,
                                                    middleware: OAuth2RequestPipelineMiddleware,
                                                    completion: @escaping Result<BearerToken>.Block)
```

<sub>**Infered Type**</sub>
```swift
(Auth.Migrator.Type) -> (URLSessionClient, OAuth2RequestPipelineMiddleware, @escaping (Result<BearerToken>) -> ()) -> ()
```

Forces a token refresh within a session
- Parameters:
    - sessionClient: The session in which to force a token refresh
    - middleware: The middleware that describes the client configuration, authorization, and storage
    - completion: A Result that contains the refreshed token, if it succeeds

#### Parameters
| Name | Description |
| ---- | ----------- |
| *sessionClient* | The session in which to force a token refresh |
| *middleware* | The middleware that describes the client configuration, authorization, and storage |
| *completion* | A Result that contains the refreshed token, if it succeeds |

### registerPreFetchHook(_:)

<sub>**Declaration**</sub>
```swift
public static func registerPreFetchHook(_ hook: @escaping TokenPreFetchHook)
```

<sub>**Infered Type**</sub>
```swift
(Auth.Migrator.Type) -> (@escaping (OAuth2ClientConfiguration, OAuth2Authorization.AuthorizationLevel) -> ()) -> ()
```

Registers a hook that fires when Conduit is about to refresh a bearer token for a
given client and authorization level
- Parameters:
    - tokenPreFetchHook: The hook to be registered

#### Parameters
| Name | Description |
| ---- | ----------- |
| *tokenPreFetchHook* | The hook to be registered |

### registerPostFetchHook(_:)

<sub>**Declaration**</sub>
```swift
public static func registerPostFetchHook(_ hook: @escaping TokenPostFetchHook)
```

<sub>**Infered Type**</sub>
```swift
(Auth.Migrator.Type) -> (@escaping (OAuth2ClientConfiguration, OAuth2Authorization.AuthorizationLevel, Result<BearerToken>) -> ()) -> ()
```

Registers a hook that fires when Conduit has finished or failed to refresh a token for a
given client and authorization level
- Parameters:
    - tokenPostFetchHook: The hook to be registered

#### Parameters
| Name | Description |
| ---- | ----------- |
| *tokenPostFetchHook* | The hook to be registered |
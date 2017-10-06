<sub>**CLASS**</sub>
# NetworkReachability

<sub>**Declaration**</sub>
```swift
public class NetworkReachability
```

<sub>**Infered Type**</sub>
```swift
NetworkReachability.Type
```

Represents the reachability of a specific network connection, or all network connections.

--------------------

## Properties
### status

<sub>**Declaration**</sub>
```swift
public private(set) var status: NetworkStatus
```

<sub>**Infered Type**</sub>
```swift
NetworkStatus
```

The current reachable status of the network connection

## Methods
### init(hostName:)

<sub>**Declaration**</sub>
```swift
public convenience init?(hostName: String)
```

<sub>**Infered Type**</sub>
```swift
(NetworkReachability.Type) -> (String) -> NetworkReachability?
```

Attempts to produce a NetworkReachability against a given host

- Parameter hostName: The host to connect to (i.e. mindbodyonline.com)

#### Parameters
| Name | Description |
| ---- | ----------- |
| *hostName* | The host to connect to (i.e. mindbodyonline.com) |

### register(handler:)

<sub>**Declaration**</sub>
```swift
public func register(handler: @escaping NetworkReachabilityChangeHandler) -> NetworkReachabilityObserver
```

<sub>**Infered Type**</sub>
```swift
(NetworkReachability) -> (@escaping (NetworkReachability) -> ()) -> NetworkReachabilityObserver
```

Registers a closure to be fired every time reachability changes

- Parameter handler: The handler to register
- Returns: An observer that can be unregistered if needed

#### Parameters
| Name | Description |
| ---- | ----------- |
| *handler* | The handler to register |

### unregister(observer:)

<sub>**Declaration**</sub>
```swift
public func unregister(observer: NetworkReachabilityObserver)
```

<sub>**Infered Type**</sub>
```swift
(NetworkReachability) -> (NetworkReachabilityObserver) -> ()
```

Unregisters a network reachability observer

- Parameter observer: The observer to unregister

#### Parameters
| Name | Description |
| ---- | ----------- |
| *observer* | The observer to unregister |

### unregisterAllObservers()

<sub>**Declaration**</sub>
```swift
public func unregisterAllObservers()
```

<sub>**Infered Type**</sub>
```swift
(NetworkReachability) -> () -> ()
```

Unregisters all network reachability observers


<sub>**ENUM**</sub>
# NetworkStatus

<sub>**Declaration**</sub>
```swift
public enum NetworkStatus
```

<sub>**Infered Type**</sub>
```swift
NetworkStatus.Type
```

Represents the reachable status of a network connection.

- reachableViaWiFi: The network is reachable through WLAN (WiFi/ethernet)
- reachableWithRequiredIntervention: The network is reachable with user intervention needed
(i.e. authentication required) before traffic exchange
- reachableViaWWAN: The network is reachable through WWAN (LTE/4G/3G)
- unreachable: The network is not reachable

--------------------

## Cases
### reachableViaWLAN

<sub>**Declaration**</sub>
```swift
case reachableViaWLAN
```

<sub>**Infered Type**</sub>
```swift
(NetworkStatus.Type) -> NetworkStatus
```

The network is reachable through WLAN (WiFi/ethernet)

### reachableWithRequiredIntervention

<sub>**Declaration**</sub>
```swift
case reachableWithRequiredIntervention
```

<sub>**Infered Type**</sub>
```swift
(NetworkStatus.Type) -> NetworkStatus
```

The network is reachable with user intervention needed

### reachableViaWWAN

<sub>**Declaration**</sub>
```swift
case reachableViaWWAN
```

<sub>**Infered Type**</sub>
```swift
(NetworkStatus.Type) -> NetworkStatus
```

The network is reachable through WWAN (LTE/4G/3G)

### unreachable

<sub>**Declaration**</sub>
```swift
case unreachable
```

<sub>**Infered Type**</sub>
```swift
(NetworkStatus.Type) -> NetworkStatus
```

The network is not reachable

## Properties
### reachable

<sub>**Declaration**</sub>
```swift
public var reachable: Bool
```

<sub>**Infered Type**</sub>
```swift
Bool
```

If true, then the network is reachable without required user intervention


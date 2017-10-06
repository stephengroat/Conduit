<sub>**PROTOCOL**</sub>
# ServerAuthenticationPolicyType

<sub>**Declaration**</sub>
```swift
public protocol ServerAuthenticationPolicyType
```

<sub>**Infered Type**</sub>
```swift
ServerAuthenticationPolicyType.Protocol
```

Defines a type that is responsible for evaluating an authentication challenge from a server

--------------------



## Methods
### evaluate(authenticationChallenge:)

<sub>**Declaration**</sub>
```swift
func evaluate(authenticationChallenge: URLAuthenticationChallenge) -> Bool
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : ServerAuthenticationPolicyType> (Self) -> (URLAuthenticationChallenge) -> Bool
```

Indicates whether or not the policy passes with the provided authentication challenge
- Parameters:
    - authenticationChallenge: The authentication challenge sent from a server
- Returns: A Bool indicating whether or not the policy passed

#### Parameters
| Name | Description |
| ---- | ----------- |
| *authenticationChallenge* | The authentication challenge sent from a server |
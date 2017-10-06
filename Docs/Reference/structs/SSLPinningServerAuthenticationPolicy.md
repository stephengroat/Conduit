<sub>**STRUCT**</sub>
# SSLPinningServerAuthenticationPolicy

<sub>**Declaration**</sub>
```swift
public struct SSLPinningServerAuthenticationPolicy: ServerAuthenticationPolicyType
```

<sub>**Infered Type**</sub>
```swift
SSLPinningServerAuthenticationPolicy.Type
```

A server authentication policy that evaluates a server trust by ensuring the trust chain
is composed of expected certificates and that those certificates are valid

--------------------

## Properties
### allowsInvalidSSLCertificates

<sub>**Declaration**</sub>
```swift
public var allowsInvalidSSLCertificates = false
```

<sub>**Infered Type**</sub>
```swift
Bool
```

If true, then server trusts with invalid certificates will not cause the policy to fail evaluation

### pinningType

<sub>**Declaration**</sub>
```swift
public var pinningType: SSLPinningType = .publicKey
```

<sub>**Infered Type**</sub>
```swift
SSLPinningType
```

The granularity of SSL pinning to be performed per authentication challenge

## Methods
### init(certificates:evaluationPredicate:)

<sub>**Declaration**</sub>
```swift
public init(certificates: CertificateBundle, evaluationPredicate: @escaping SSLPinningServerEvaluationPredicate)
```

<sub>**Infered Type**</sub>
```swift
(SSLPinningServerAuthenticationPolicy.Type) -> (CertificateBundle, @escaping (URLAuthenticationChallenge) -> Bool) -> SSLPinningServerAuthenticationPolicy
```

Initializes an SSLPinningServerAuthenticationPolicy with the given CertificateBundle to pin against and
a predicate to determine when a server trust should be evaluated



### evaluate(authenticationChallenge:)

<sub>**Declaration**</sub>
```swift
public func evaluate(authenticationChallenge: URLAuthenticationChallenge) -> Bool
```

<sub>**Infered Type**</sub>
```swift
(SSLPinningServerAuthenticationPolicy) -> (URLAuthenticationChallenge) -> Bool
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *authenticationChallenge* | The authentication challenge sent from a server |
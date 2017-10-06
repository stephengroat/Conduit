<sub>**STRUCT**</sub>
# CertificateBundle

<sub>**Declaration**</sub>
```swift
public struct CertificateBundle
```

<sub>**Infered Type**</sub>
```swift
CertificateBundle.Type
```



--------------------



## Methods
### init(certificatePaths:)

<sub>**Declaration**</sub>
```swift
public init(certificatePaths: [String])
```

<sub>**Infered Type**</sub>
```swift
(CertificateBundle.Type) -> ([String]) -> CertificateBundle
```

Creates a new CertificateBundle

- Parameters:
  - certificatePaths: A list of paths to DER certificates

#### Parameters
| Name | Description |
| ---- | ----------- |
| *certificatePaths* | A list of paths to DER certificates |

### init(serverTrust:)

<sub>**Declaration**</sub>
```swift
public init(serverTrust: SecTrust)
```

<sub>**Infered Type**</sub>
```swift
(CertificateBundle.Type) -> (SecTrust) -> CertificateBundle
```

Creates a new CertificateBundle

- Parameters:
  - serverTrust: A server trust, which contains a certificate chain

#### Parameters
| Name | Description |
| ---- | ----------- |
| *serverTrust* | A server trust, which contains a certificate chain |

### init(certificates:)

<sub>**Declaration**</sub>
```swift
public init(certificates: [SecCertificate])
```

<sub>**Infered Type**</sub>
```swift
(CertificateBundle.Type) -> ([SecCertificate]) -> CertificateBundle
```

Creates a new CertificateBundle

- Parameters:
  - serverTrust: A list of certificates

#### Parameters
| Name | Description |
| ---- | ----------- |
| *serverTrust* | A list of certificates |

### bundleWithCertificatesWithinMainBundle()

<sub>**Declaration**</sub>
```swift
public static func bundleWithCertificatesWithinMainBundle() -> CertificateBundle
```

<sub>**Infered Type**</sub>
```swift
(CertificateBundle.Type) -> () -> CertificateBundle
```

Searches the main bundle (if running within a bundled application) for DER certificates


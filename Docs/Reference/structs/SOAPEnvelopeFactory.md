<sub>**STRUCT**</sub>
# SOAPEnvelopeFactory

<sub>**Declaration**</sub>
```swift
public struct SOAPEnvelopeFactory
```

<sub>**Infered Type**</sub>
```swift
SOAPEnvelopeFactory.Type
```

Builds XML documents preformatted for SOAP transport.
- Note: Headers and multiple namespaces are not yet supported.

--------------------

## Properties
### soapEnvelopeNamespace

<sub>**Declaration**</sub>
```swift
public var soapEnvelopeNamespace: String = "soap"
```

<sub>**Infered Type**</sub>
```swift
String
```

The XML namespace for SOAP envelope elements (schema: http://schemas.xmlsoap.org/soap/envelope/)

### rootNamespaceSchema

<sub>**Declaration**</sub>
```swift
public var rootNamespaceSchema: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The schema in which all non-prefixed elements are bound to (i.e. http://clients.mindbodyonline.com/api/0_5)

### encodingStyle

<sub>**Declaration**</sub>
```swift
public var encodingStyle: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The SOAP encoding style. Defaults to nil.

## Methods
### init()

<sub>**Declaration**</sub>
```swift
public init()
```

<sub>**Infered Type**</sub>
```swift
(SOAPEnvelopeFactory.Type) -> () -> SOAPEnvelopeFactory
```

Produces a SOAPEnvelopeFactory



### makeXML(soapBody:)

<sub>**Declaration**</sub>
```swift
public func makeXML(soapBody: XMLNode) -> XML
```

<sub>**Infered Type**</sub>
```swift
(SOAPEnvelopeFactory) -> (XMLNode) -> XML
```

Produces an XML document with the provided root body element

- Parameter soapBody: The root body element
- Returns: A formatted SOAP XML document

#### Parameters
| Name | Description |
| ---- | ----------- |
| *soapBody* | The root body element |
<sub>**CLASS**</sub>
# HTTPRequestBuilder

<sub>**Declaration**</sub>
```swift
public final class HTTPRequestBuilder
```

<sub>**Infered Type**</sub>
```swift
HTTPRequestBuilder.Type
```

A 'builder' object used to construct `URLRequest`s for
use over HTTP. By setting a serializer and parameters dictionary,
the body (or querystring) for the request can easily be serialized
into the right format (i.e. JSON in a POST body, or uri-encoded parameters
in a GET request).

--------------------

## Properties
### url

<sub>**Declaration**</sub>
```swift
public var url: URL
```

<sub>**Infered Type**</sub>
```swift
URL
```

The generated request's URL

### headers

<sub>**Declaration**</sub>
```swift
public var headers: [String: String]?
```

<sub>**Infered Type**</sub>
```swift
[String : String]?
```

An optional array of HTTP Headers to apply to the request

### method

<sub>**Declaration**</sub>
```swift
public var method: Method = .GET
```

<sub>**Infered Type**</sub>
```swift
HTTPRequestBuilder.Method
```

HTTP Method for the generated request
- Note: Defaults to "GET"

### serializer

<sub>**Declaration**</sub>
```swift
public var serializer: RequestSerializer = JSONRequestSerializer()
```

<sub>**Infered Type**</sub>
```swift
RequestSerializer
```

The serializer used to serialize the generated request's parameters.
- Note: Defaults to JSONRequestSerializer

### bodyParameters

<sub>**Declaration**</sub>
```swift
public var bodyParameters: Any?
```

<sub>**Infered Type**</sub>
```swift
Any?
```

Parameters applied to the request. They will be serialized into the request
using the RequestSerializer set on the `requestSerializer` property.

### queryStringParameters

<sub>**Declaration**</sub>
```swift
public var queryStringParameters: [String: Any]?
```

<sub>**Infered Type**</sub>
```swift
[String : Any]?
```

Parameters to encoded in the request URL's query string.
- remark: This is designed with for use with POST requests
that accept all or some of its parameters in the URL, instead of
exclusively in the HTTP Body.

### queryStringFormattingOptions

<sub>**Declaration**</sub>
```swift
public var queryStringFormattingOptions = QueryStringFormattingOptions()
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions
```

Formatting options for non-standard query string data types

### percentEncodedQuery

<sub>**Declaration**</sub>
```swift
public var percentEncodedQuery: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

A pre-encoded query subcomponent.

- Note: If percentEncodedQuery is set, then queryStringParameters
are completely ignored when building the request.

## Methods
### init(url:)

<sub>**Declaration**</sub>
```swift
public init(url: URL)
```

<sub>**Infered Type**</sub>
```swift
(HTTPRequestBuilder.Type) -> (URL) -> HTTPRequestBuilder
```

Creates a new HTTPRequestBuilder
- Parameters:
  - url: The base URL at which the request is targeted

#### Parameters
| Name | Description |
| ---- | ----------- |
| *url* | The base URL at which the request is targeted |

### build()

<sub>**Declaration**</sub>
```swift
public func build() throws -> URLRequest
```

<sub>**Infered Type**</sub>
```swift
(HTTPRequestBuilder) -> () throws -> URLRequest
```

Constructs an URLRequest from the builder's assigned properties.


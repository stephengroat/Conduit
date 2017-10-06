<sub>**STRUCT**</sub>
# OAuth2ServerEnvironment

<sub>**Declaration**</sub>
```swift
public struct OAuth2ServerEnvironment
```

<sub>**Infered Type**</sub>
```swift
OAuth2ServerEnvironment.Type
```

Describes an OAuth2 server application environment

--------------------

## Properties
### scope

<sub>**Declaration**</sub>
```swift
public var scope: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The scope of access for which tokens should be granted

### tokenGrantURL

<sub>**Declaration**</sub>
```swift
public var tokenGrantURL: URL
```

<sub>**Infered Type**</sub>
```swift
URL
```

The server endpoint that issues new tokens

## Methods
### init(scope:tokenGrantURL:)

<sub>**Declaration**</sub>
```swift
public init(scope: String? = nil, tokenGrantURL: URL)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2ServerEnvironment.Type) -> (String?, URL) -> OAuth2ServerEnvironment
```

Creates a new OAuth2ServerEnvironment
- Parameters:
  - scope: The scope of access for which tokens should be granted
  - tokenGrantURL: The server endpoint that issues new tokens

#### Parameters
| Name | Description |
| ---- | ----------- |
| *scope* | The scope of access for which tokens should be granted |
| *tokenGrantURL* | The server endpoint that issues new tokens |
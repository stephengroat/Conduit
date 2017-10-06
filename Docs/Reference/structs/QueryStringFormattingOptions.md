<sub>**STRUCT**</sub>
# QueryStringFormattingOptions

<sub>**Declaration**</sub>
```swift
public struct QueryStringFormattingOptions
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.Type
```

Formatting options for non-standard query string datatypes

--------------------

## Properties
### arrayFormat

<sub>**Declaration**</sub>
```swift
public var arrayFormat: ArrayFormat = .indexed
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.ArrayFormat
```

The format in which arrays should be serialized within a query string

### dictionaryFormat

<sub>**Declaration**</sub>
```swift
public var dictionaryFormat: DictionaryFormat = .subscripted
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.DictionaryFormat
```

The format in which dictionaries should be serialized within a query string

### percentEncodedReservedCharacterSet

<sub>**Declaration**</sub>
```swift
public var percentEncodedReservedCharacterSet: CharacterSet?
```

<sub>**Infered Type**</sub>
```swift
CharacterSet?
```

Includes any reserved delimiter characters that should be URL-encoded
By default, reserved characters listed in [RFC 3986 Section 6.2.2](https://www.ietf.org/rfc/rfc3986.txt)
are not encoded. This doesn't include conflicting delimiter characters (&=#[]%) which
are always encoded.

- Note: Non-reserved characters, characters listed above (&=#[]%), and 
characters with special encoding rules (+ ) will be ignored. If more complex encoding is required,
then percent-encoding will need to be handled manually.

### plusSymbolEncodingRule

<sub>**Declaration**</sub>
```swift
public var plusSymbolEncodingRule: PlusSymbolEncodingRule = .replacedWithEncodedPlus
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.PlusSymbolEncodingRule
```

Determines whether '+' should be replaced with '%2B' or '%20'. By default,
this follows Apple's behavior of not encoding plus symbols.

[View Radar](http://www.openradar.me/24076063)

### spaceEncodingRule

<sub>**Declaration**</sub>
```swift
public var spaceEncodingRule: SpaceEncodingRule = .encoded
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.SpaceEncodingRule
```

Determines whether ' ' should be replaced with '%20' or '+'. By default,
this follows Apple's behavior of encoding to '%20'.

## Methods
### init()

<sub>**Declaration**</sub>
```swift
public init()
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.Type) -> () -> QueryStringFormattingOptions
```




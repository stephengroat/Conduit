<sub>**EXTENSION**</sub>
# Result

--------------------

## Properties
### value

<sub>**Declaration**</sub>
```swift
public var value: T?
```

<sub>**Infered Type**</sub>
```swift
T?
```

Optional value getter, useful when error value is ignored by the application.

    if let value = result.value {
        // Do something
    }
    else {
        presentAlert(message: "Operation failed. Please try again.")
    }

### error

<sub>**Declaration**</sub>
```swift
public var error: Error?
```

<sub>**Infered Type**</sub>
```swift
Error?
```

Optional error getter, useful when value is `Void` or not used and we are just 
checking for presence of an error.

    if let error = result.error {
        presentAlert(error: error)
    }
    else {
        // Nothing to do with `Void` value
    }

## Methods
### valueOrThrow()

<sub>**Declaration**</sub>
```swift
public func valueOrThrow() throws -> T
```

<sub>**Infered Type**</sub>
```swift
<T> (Result<T>) -> () throws -> T
```

Throwing value getter, useful to use on synchronous code. Will attempt to extract value.
Throws error if no value is present.

    do {
        let value = try result.valueOrThrow()
        // Do something with `value`
    }
    catch let error {
        // Do something with `error`
    }



### convert(errorConverter:valueConverter:)

<sub>**Declaration**</sub>
```swift
public func convert<TNew>(errorConverter: ((Error) -> Error)? = nil, valueConverter: (T) -> TNew) -> Result<TNew>
```

<sub>**Infered Type**</sub>
```swift
<T, TNew> (Result<T>) -> (((Error) -> Error)?, (T) -> TNew) -> Result<TNew>
```

Converts the wrapped value (or error) to a different and instance of a different type, `TNew`

- Parameters:
  - valueConverter: Conversion function for the `value` case. 
    Receives the underlying `.value(T)` as an argument. Returns: `TNew`.
  - errorConverter: Convertion function for the `error` case. 
    Receives the underlying .error(Error) as an argument. Returns a different Error.
    This argument can be nil, in which case the original, wrapped, `Error` is unchanged.

- Returns: Result<TNew>

#### Parameters
| Name | Description |
| ---- | ----------- |
| *valueConverter* | Conversion function for the `value` case. Receives the underlying `.value(T)` as an argument. Returns: `TNew`. |
| *errorConverter* | Convertion function for the `error` case. Receives the underlying .error(Error) as an argument. Returns a different Error. This argument can be nil, in which case the original, wrapped, `Error` is unchanged. |
<sub>**ENUM**</sub>
# Result

<sub>**Declaration**</sub>
```swift
public enum Result<T>
```

<sub>**Infered Type**</sub>
```swift
Result<T>.Type
```

Represents a disjoint union of either a value<T> and an Error
This is similar to Scala's `Either` data type, and we can employ it
to work around Swift's limited support for error handling in
methods that return values via a closure.

_Example:_

    struct WidgetRepository {
        func widget(withID ID: String, completion: (Result<Widget>) -> ()) { ... }
    }


Using `Result<T>`'s nested `Block` typealias, the "completion" parameter can be simplified:

    struct WidgetRepository {
        func widget(withID ID: String, completion: Result<Widget>.Block) { ... }
    }

--------------------

## Cases
### value

<sub>**Declaration**</sub>
```swift
case value(T)
```

<sub>**Infered Type**</sub>
```swift
<T> (Result<T>.Type) -> (T) -> Result<T>
```



### error

<sub>**Declaration**</sub>
```swift
case error(Error)
```

<sub>**Infered Type**</sub>
```swift
<T> (Result<T>.Type) -> (Error) -> Result<T>
```






<sub>**ENUM**</sub>
# Content

<sub>**Declaration**</sub>
```swift
public enum Content
```

<sub>**Infered Type**</sub>
```swift
FormPart.Content.Type
```

A structure containing form part content information

--------------------

## Cases
### image





An image with an associated compression format

### image

<sub>**Declaration**</sub>
```swift
case image(UIImage, ImageFormat)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.Content.Type) -> (UIImage, FormPart.ImageFormat) -> FormPart.Content
```

An image with an associated compression format

### image







### video

<sub>**Declaration**</sub>
```swift
case video(Data, VideoFormat)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.Content.Type) -> (Data, FormPart.VideoFormat) -> FormPart.Content
```

A video with an associated media container format

### pdf

<sub>**Declaration**</sub>
```swift
case pdf(Data)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.Content.Type) -> (Data) -> FormPart.Content
```

PDF Data

### binary

<sub>**Declaration**</sub>
```swift
case binary(Data)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.Content.Type) -> (Data) -> FormPart.Content
```

Arbitrary binary data

### text

<sub>**Declaration**</sub>
```swift
case text(String)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.Content.Type) -> (String) -> FormPart.Content
```

A plaintext value




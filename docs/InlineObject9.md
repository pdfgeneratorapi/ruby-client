# PDFGeneratorAPI::InlineObject9

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **Array&lt;String&gt;** | Array of base64 encoded images, one per converted page. | [optional] |
| **meta** | [**InlineObject9Meta**](InlineObject9Meta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject9.new(
  response: [&quot;iVBORw0KGgoAAAANSUhEUgAA...&quot;],
  meta: null
)
```


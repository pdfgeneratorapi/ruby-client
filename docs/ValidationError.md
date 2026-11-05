# PDFGeneratorAPI::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Error description. For validation failures, the first error followed by \&quot;(and N more errors)\&quot; when there are several. |  |
| **errors** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Validation messages keyed by the request field that failed. Present only for validation failures. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::ValidationError.new(
  message: The identifier field is required.,
  errors: {&quot;identifier&quot;:[&quot;The identifier field is required.&quot;]}
)
```


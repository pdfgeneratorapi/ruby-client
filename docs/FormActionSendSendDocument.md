# PDFGeneratorAPI::FormActionSendSendDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | HTTPS URL where the generated document will be delivered. |  |
| **headers** | [**Array&lt;FormActionSendSendDocumentHeadersInner&gt;**](FormActionSendSendDocumentHeadersInner.md) | Optional HTTP headers to include with the delivery request. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormActionSendSendDocument.new(
  url: https://example.com/webhook,
  headers: null
)
```


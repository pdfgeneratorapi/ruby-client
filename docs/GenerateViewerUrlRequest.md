# PDFGeneratorAPI::GenerateViewerUrlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **output** | **String** | Response format. &#x60;url&#x60; returns a public URL to the stored document; &#x60;viewer&#x60; returns a public URL to the PDF viewer (with encrypted prefill when provided). | [optional][default to &#39;url&#39;] |
| **prefill** | [**PrefillParam**](PrefillParam.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateViewerUrlRequest.new(
  output: viewer,
  prefill: null
)
```


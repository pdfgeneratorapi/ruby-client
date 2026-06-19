# PDFGeneratorAPI::StoreDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | Base64 encoded PDF file. Required if file_url is not provided. | [optional] |
| **file_url** | **String** | Public HTTPS URL to a PDF file. Required if file_base64 is not provided. | [optional] |
| **name** | **String** | Generated document name (optional) | [optional][default to &#39;&#39;] |
| **output** | **String** | Response format. &#x60;url&#x60; returns a public URL to the stored document; &#x60;viewer&#x60; returns a public URL to the PDF viewer. | [optional][default to &#39;url&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::StoreDocumentRequest.new(
  file_base64: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8...,
  file_url: https://example.org/document.pdf,
  name: Invoice 123,
  output: url
)
```


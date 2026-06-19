# PDFGeneratorAPI::ConvertPDF2ImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_base64** | **String** | Base64 encoded PDF file. Required if file_url is not provided. | [optional] |
| **file_url** | **String** | Public HTTPS URL to a PDF file. Required if file_base64 is not provided. | [optional] |
| **format** | **String** | Output image format | [optional][default to &#39;png&#39;] |
| **quality** | **Integer** | Image quality (1-100) | [optional][default to 85] |
| **resolution** | **Integer** | Image resolution in DPI (72-600) | [optional][default to 150] |
| **pages** | **String** | Page number or range to convert. Use a single number (e.g. \&quot;1\&quot;) or a range (e.g. \&quot;1-4\&quot;). Defaults to all pages. | [optional][default to &#39;all&#39;] |
| **output** | **String** | Output format | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Document name (max 120 characters). Auto-generated if not provided. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::ConvertPDF2ImageRequest.new(
  file_base64: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8...,
  file_url: https://example.org/document.pdf,
  format: png,
  quality: 85,
  resolution: 150,
  pages: 1-4,
  output: base64,
  name: my-document
)
```


# PDFGeneratorAPI::GenerateDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | [**TemplateParam**](TemplateParam.md) |  | [optional] |
| **format** | [**FormatParam**](FormatParam.md) |  | [optional][default to &#39;pdf&#39;] |
| **output** | [**OutputParam**](OutputParam.md) |  | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Generated document name (optional) | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateDocumentRequest.new(
  template: null,
  format: null,
  output: null,
  name: Invoice 123
)
```


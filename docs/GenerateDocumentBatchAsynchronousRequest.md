# PDFGeneratorAPI::GenerateDocumentBatchAsynchronousRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | [**Array&lt;TemplateParam&gt;**](TemplateParam.md) |  | [optional] |
| **callback** | [**CallbackParam**](CallbackParam.md) |  | [optional] |
| **format** | [**FormatParam**](FormatParam.md) |  | [optional][default to &#39;pdf&#39;] |
| **output** | [**AsyncOutputParam**](AsyncOutputParam.md) |  | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Generated document name (optional) | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateDocumentBatchAsynchronousRequest.new(
  template: null,
  callback: null,
  format: null,
  output: null,
  name: Invoice 123
)
```


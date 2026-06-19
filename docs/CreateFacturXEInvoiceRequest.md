# PDFGeneratorAPI::CreateFacturXEInvoiceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | [**CreateFacturXEInvoiceRequestTemplate**](CreateFacturXEInvoiceRequestTemplate.md) |  |  |
| **profile** | **String** | Factur-X conformance level. | [optional][default to &#39;basic&#39;] |
| **output** | [**OutputParam**](OutputParam.md) |  | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Generated document name (optional) | [optional][default to &#39;&#39;] |
| **metadata** | [**MetadataParam**](MetadataParam.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::CreateFacturXEInvoiceRequest.new(
  template: null,
  profile: basic,
  output: null,
  name: Invoice 123,
  metadata: null
)
```


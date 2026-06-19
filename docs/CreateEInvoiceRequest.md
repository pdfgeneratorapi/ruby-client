# PDFGeneratorAPI::CreateEInvoiceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | JSON payload that represents the Peppol BIS Billing 3.0 UBL Invoice (https://docs.peppol.eu/poacc/billing/3.0/) Use the Get schema endpoint to see the detailed payload structure. |  |
| **type** | **String** | Formatting type. | [optional][default to &#39;UBL&#39;] |
| **output** | **String** | Response format. When the \&quot;file\&quot; option is used the API returns the file inline. | [optional][default to &#39;base64&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::CreateEInvoiceRequest.new(
  data: null,
  type: UBL,
  output: base64
)
```


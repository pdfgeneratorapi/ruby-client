# PDFGeneratorAPI::FormConfigurationNewActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_document** | **Boolean** |  | [optional] |
| **download_document** | **Boolean** |  | [optional] |
| **send_document** | [**FormActionSendSendDocument**](FormActionSendSendDocument.md) |  | [optional] |
| **sign_document** | **Boolean** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormConfigurationNewActionsInner.new(
  store_document: true,
  download_document: true,
  send_document: null,
  sign_document: true
)
```


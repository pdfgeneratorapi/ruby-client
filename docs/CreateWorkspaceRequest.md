# PDFGeneratorAPI::CreateWorkspaceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | A unique identifier of the workspace. Make sure that you can generate the same identifier for your user. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::CreateWorkspaceRequest.new(
  identifier: demo.example@actualreports.com
)
```


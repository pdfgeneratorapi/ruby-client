# PDFGeneratorAPI::AddWatermark201ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Document name. This value is automatically generated if name attribute is not defined in request. | [optional] |
| **display_name** | **String** | Document name without the file extension. | [optional] |
| **encoding** | **String** | Document encoding | [optional] |
| **content_type** | **String** | Document content type. | [optional] |
| **public_id** | **String** | Document public id, if output&#x3D;url was used for document storage | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::AddWatermark201ResponseMeta.new(
  name: a2bd25b8921f3dc7a440fd7f427f90a4.pdf,
  display_name: a2bd25b8921f3dc7a440fd7f427f90a4,
  encoding: base64,
  content_type: application/pdf,
  public_id: a2bd25b8921f3dc7a440fd7f427f90a4
)
```


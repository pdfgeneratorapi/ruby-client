# PDFGeneratorAPI::Document

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | Document unique identifier | [optional] |
| **public_url** | **String** | Public URL of the document | [optional] |
| **template_id** | **Integer** | Template used to generate the document | [optional] |
| **created_at** | **String** | Date time when the document was generated | [optional] |
| **expires_at** | **String** | Date time when the document url will expire. Document is stored for 30 days. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::Document.new(
  public_id: a2bd25b8921f3dc7a440fd7f427f90a4,
  public_url: https://us1.pdfgeneratorapi.com/api/v4/documents/66/6475768884cecfcd3ed4e6028be8a580/share,
  template_id: 18905762,
  created_at: 2022-07-02 13:04:21,
  expires_at: 2022-08-02 13:04:21
)
```


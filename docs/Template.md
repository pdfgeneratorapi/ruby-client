# PDFGeneratorAPI::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier | [optional] |
| **name** | **String** | Template name | [optional] |
| **owner** | **Boolean** | Indicates if the workspace is the owner of the template | [optional] |
| **created_at** | **String** | Timestamp when the template was created | [optional] |
| **updated_at** | **String** | Timestamp when the template was updated | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tags assigned to a template | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::Template.new(
  id: 24382,
  name: Invoice template,
  owner: true,
  created_at: 2022-01-21 11:49:28,
  updated_at: 2022-08-01 23:49:28,
  tags: [&quot;invoice&quot;,&quot;orders&quot;]
)
```


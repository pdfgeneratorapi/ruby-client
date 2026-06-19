# PDFGeneratorAPI::ImportTemplateRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::ImportTemplateRequest.openapi_one_of
# =>
# [
#   :'ImportTemplateBase64',
#   :'ImportTemplateUrl'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::ImportTemplateRequest.build(data)
# => #<ImportTemplateBase64:0x00007fdd4aab02a0>

PDFGeneratorAPI::ImportTemplateRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ImportTemplateBase64`
- `ImportTemplateUrl`
- `nil` (if no type matches)


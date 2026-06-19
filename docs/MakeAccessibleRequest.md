# PDFGeneratorAPI::MakeAccessibleRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::MakeAccessibleRequest.openapi_one_of
# =>
# [
#   :'MakeAccessibleBase64',
#   :'MakeAccessibleUrl'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::MakeAccessibleRequest.build(data)
# => #<MakeAccessibleBase64:0x00007fdd4aab02a0>

PDFGeneratorAPI::MakeAccessibleRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MakeAccessibleBase64`
- `MakeAccessibleUrl`
- `nil` (if no type matches)


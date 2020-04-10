# PDFGeneratorAPI::InlineResponse2004

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response** | **String** | Base64 encoded document if the output&#x3D;base64 is used or URL to the document when the output&#x3D;url is used. | [optional] 
**meta** | [**InlineResponse2004Meta**](InlineResponse2004Meta.md) |  | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::InlineResponse2004.new(response: JVBERi0xLjcKJeLjz9MKNyAwIG9iago8PCAvVHlwZSA...,
                                 meta: null)
```



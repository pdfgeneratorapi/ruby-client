# PDFGeneratorAPI::InlineResponse404

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Error description | [optional] 
**status** | **String** | HTTP Error code | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::InlineResponse404.new(error: Entity not found,
                                 status: 404)
```



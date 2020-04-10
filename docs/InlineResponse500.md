# PDFGeneratorAPI::InlineResponse500

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Error description | [optional] 
**status** | **String** | HTTP Error code | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::InlineResponse500.new(error: Internal error,
                                 status: 500)
```



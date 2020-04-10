# PDFGeneratorAPI::InlineResponse401

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Error description | [optional] 
**status** | **String** | HTTP Error code | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::InlineResponse401.new(error: Authentication failed,
                                 status: 401)
```



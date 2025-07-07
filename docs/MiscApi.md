# PDFGeneratorAPI::MiscApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status**](MiscApi.md#get_status) | **GET** /status | Get Service Status |


## get_status

> <GetStatus200Response> get_status

Get Service Status

Returns service status / health

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::MiscApi.new

begin
  # Get Service Status
  result = api_instance.get_status
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling MiscApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatus200Response>, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # Get Service Status
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatus200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling MiscApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetStatus200Response**](GetStatus200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


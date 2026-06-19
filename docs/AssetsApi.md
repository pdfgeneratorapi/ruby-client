# PDFGeneratorAPI::AssetsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_qr_code**](AssetsApi.md#generate_qr_code) | **POST** /assets/qrcode | Generate QR Code |


## generate_qr_code

> <GenerateQRCode201Response> generate_qr_code(generate_qr_code_request)

Generate QR Code

Creates a QR code based on the configuration

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::AssetsApi.new
generate_qr_code_request = PDFGeneratorAPI::GenerateQRCodeRequest.new({content: 'My QR Code'}) # GenerateQRCodeRequest | QR Code configuration

begin
  # Generate QR Code
  result = api_instance.generate_qr_code(generate_qr_code_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling AssetsApi->generate_qr_code: #{e}"
end
```

#### Using the generate_qr_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateQRCode201Response>, Integer, Hash)> generate_qr_code_with_http_info(generate_qr_code_request)

```ruby
begin
  # Generate QR Code
  data, status_code, headers = api_instance.generate_qr_code_with_http_info(generate_qr_code_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateQRCode201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling AssetsApi->generate_qr_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_qr_code_request** | [**GenerateQRCodeRequest**](GenerateQRCodeRequest.md) | QR Code configuration |  |

### Return type

[**GenerateQRCode201Response**](GenerateQRCode201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


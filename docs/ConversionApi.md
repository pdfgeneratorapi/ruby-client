# PDFGeneratorAPI::ConversionApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert_html2_pdf**](ConversionApi.md#convert_html2_pdf) | **POST** /conversion/html2pdf | HTML to PDF |
| [**convert_pdf2_image**](ConversionApi.md#convert_pdf2_image) | **POST** /conversion/pdf2image | PDF to Image |
| [**convert_url2_pdf**](ConversionApi.md#convert_url2_pdf) | **POST** /conversion/url2pdf | URL to PDF |


## convert_html2_pdf

> <InlineObject9> convert_html2_pdf(convert_html2_pdf_request)

HTML to PDF

Converts HTML content to PDF

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ConversionApi.new
convert_html2_pdf_request = PDFGeneratorAPI::ConvertHTML2PDFRequest.new # ConvertHTML2PDFRequest | 

begin
  # HTML to PDF
  result = api_instance.convert_html2_pdf(convert_html2_pdf_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ConversionApi->convert_html2_pdf: #{e}"
end
```

#### Using the convert_html2_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> convert_html2_pdf_with_http_info(convert_html2_pdf_request)

```ruby
begin
  # HTML to PDF
  data, status_code, headers = api_instance.convert_html2_pdf_with_http_info(convert_html2_pdf_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ConversionApi->convert_html2_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_html2_pdf_request** | [**ConvertHTML2PDFRequest**](ConvertHTML2PDFRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## convert_pdf2_image

> <InlineObject10> convert_pdf2_image(convert_pdf2_image_request)

PDF to Image

Converts PDF document to images. Provide either a base64 encoded PDF or a public URL to a PDF file.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ConversionApi.new
convert_pdf2_image_request = PDFGeneratorAPI::ConvertPDF2ImageRequest.new # ConvertPDF2ImageRequest | 

begin
  # PDF to Image
  result = api_instance.convert_pdf2_image(convert_pdf2_image_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ConversionApi->convert_pdf2_image: #{e}"
end
```

#### Using the convert_pdf2_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject10>, Integer, Hash)> convert_pdf2_image_with_http_info(convert_pdf2_image_request)

```ruby
begin
  # PDF to Image
  data, status_code, headers = api_instance.convert_pdf2_image_with_http_info(convert_pdf2_image_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject10>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ConversionApi->convert_pdf2_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_pdf2_image_request** | [**ConvertPDF2ImageRequest**](ConvertPDF2ImageRequest.md) |  |  |

### Return type

[**InlineObject10**](InlineObject10.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## convert_url2_pdf

> <InlineObject9> convert_url2_pdf(convert_url2_pdf_request)

URL to PDF

Converts public URL to PDF

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ConversionApi.new
convert_url2_pdf_request = PDFGeneratorAPI::ConvertURL2PDFRequest.new # ConvertURL2PDFRequest | 

begin
  # URL to PDF
  result = api_instance.convert_url2_pdf(convert_url2_pdf_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ConversionApi->convert_url2_pdf: #{e}"
end
```

#### Using the convert_url2_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> convert_url2_pdf_with_http_info(convert_url2_pdf_request)

```ruby
begin
  # URL to PDF
  data, status_code, headers = api_instance.convert_url2_pdf_with_http_info(convert_url2_pdf_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ConversionApi->convert_url2_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_url2_pdf_request** | [**ConvertURL2PDFRequest**](ConvertURL2PDFRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


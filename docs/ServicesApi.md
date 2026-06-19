# PDFGeneratorAPI::ServicesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_watermark**](ServicesApi.md#add_watermark) | **POST** /pdfservices/watermark | Add watermark |
| [**decrypt_document**](ServicesApi.md#decrypt_document) | **POST** /pdfservices/decrypt | Decrypt document |
| [**encrypt_document**](ServicesApi.md#encrypt_document) | **POST** /pdfservices/encrypt | Encrypt document |
| [**extract_form_fields**](ServicesApi.md#extract_form_fields) | **POST** /pdfservices/form/fields | Extract form fields |
| [**fill_form_fields**](ServicesApi.md#fill_form_fields) | **POST** /pdfservices/form/fill | Fill form fields |
| [**make_accessible**](ServicesApi.md#make_accessible) | **POST** /pdfservices/make-accessible | Make accessible |
| [**optimize_document**](ServicesApi.md#optimize_document) | **POST** /pdfservices/optimize | Optimize document |


## add_watermark

> <InlineObject9> add_watermark(add_watermark_request)

Add watermark

Adds a text or an image watermark to PDF document from base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
add_watermark_request = PDFGeneratorAPI::WatermarkBase64.new({file_base64: 'file_base64_example', watermark: PDFGeneratorAPI::WatermarkFileUrlWatermark.new}) # AddWatermarkRequest | 

begin
  # Add watermark
  result = api_instance.add_watermark(add_watermark_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->add_watermark: #{e}"
end
```

#### Using the add_watermark_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> add_watermark_with_http_info(add_watermark_request)

```ruby
begin
  # Add watermark
  data, status_code, headers = api_instance.add_watermark_with_http_info(add_watermark_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->add_watermark_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_watermark_request** | [**AddWatermarkRequest**](AddWatermarkRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## decrypt_document

> <InlineObject9> decrypt_document(encrypt_document_request)

Decrypt document

Decrypts an encrypted PDF document from base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
encrypt_document_request = PDFGeneratorAPI::EncryptAndDecryptBase64.new({file_base64: 'file_base64_example', owner_password: 'owner_password_example'}) # EncryptDocumentRequest | 

begin
  # Decrypt document
  result = api_instance.decrypt_document(encrypt_document_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->decrypt_document: #{e}"
end
```

#### Using the decrypt_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> decrypt_document_with_http_info(encrypt_document_request)

```ruby
begin
  # Decrypt document
  data, status_code, headers = api_instance.decrypt_document_with_http_info(encrypt_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->decrypt_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encrypt_document_request** | [**EncryptDocumentRequest**](EncryptDocumentRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## encrypt_document

> <InlineObject9> encrypt_document(encrypt_document_request)

Encrypt document

Encrypts a PDF document from base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
encrypt_document_request = PDFGeneratorAPI::EncryptAndDecryptBase64.new({file_base64: 'file_base64_example', owner_password: 'owner_password_example'}) # EncryptDocumentRequest | 

begin
  # Encrypt document
  result = api_instance.encrypt_document(encrypt_document_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->encrypt_document: #{e}"
end
```

#### Using the encrypt_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> encrypt_document_with_http_info(encrypt_document_request)

```ruby
begin
  # Encrypt document
  data, status_code, headers = api_instance.encrypt_document_with_http_info(encrypt_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->encrypt_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encrypt_document_request** | [**EncryptDocumentRequest**](EncryptDocumentRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## extract_form_fields

> <InlineObject14> extract_form_fields(extract_form_fields_request)

Extract form fields

Extracts form fields and their metadata from a PDF document using base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
extract_form_fields_request = PDFGeneratorAPI::FormFieldsBase64.new({file_base64: 'file_base64_example'}) # ExtractFormFieldsRequest | 

begin
  # Extract form fields
  result = api_instance.extract_form_fields(extract_form_fields_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->extract_form_fields: #{e}"
end
```

#### Using the extract_form_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject14>, Integer, Hash)> extract_form_fields_with_http_info(extract_form_fields_request)

```ruby
begin
  # Extract form fields
  data, status_code, headers = api_instance.extract_form_fields_with_http_info(extract_form_fields_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject14>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->extract_form_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extract_form_fields_request** | [**ExtractFormFieldsRequest**](ExtractFormFieldsRequest.md) |  |  |

### Return type

[**InlineObject14**](InlineObject14.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fill_form_fields

> <InlineObject9> fill_form_fields(fill_form_fields_request)

Fill form fields

Fills form fields in a PDF document with provided data from base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
fill_form_fields_request = PDFGeneratorAPI::FormFillBase64.new({file_base64: 'file_base64_example', data: {"firstName":"John","lastName":"Doe","email":"john.doe@example.com"}}) # FillFormFieldsRequest | 

begin
  # Fill form fields
  result = api_instance.fill_form_fields(fill_form_fields_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->fill_form_fields: #{e}"
end
```

#### Using the fill_form_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> fill_form_fields_with_http_info(fill_form_fields_request)

```ruby
begin
  # Fill form fields
  data, status_code, headers = api_instance.fill_form_fields_with_http_info(fill_form_fields_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->fill_form_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fill_form_fields_request** | [**FillFormFieldsRequest**](FillFormFieldsRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## make_accessible

> <InlineObject9> make_accessible(make_accessible_request)

Make accessible

Tags a PDF document for accessibility from base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
make_accessible_request = PDFGeneratorAPI::MakeAccessibleBase64.new({file_base64: 'file_base64_example'}) # MakeAccessibleRequest | 

begin
  # Make accessible
  result = api_instance.make_accessible(make_accessible_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->make_accessible: #{e}"
end
```

#### Using the make_accessible_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> make_accessible_with_http_info(make_accessible_request)

```ruby
begin
  # Make accessible
  data, status_code, headers = api_instance.make_accessible_with_http_info(make_accessible_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->make_accessible_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **make_accessible_request** | [**MakeAccessibleRequest**](MakeAccessibleRequest.md) |  |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## optimize_document

> <InlineObject12> optimize_document(optimize_document_request)

Optimize document

Optimizes the size of a PDF document from base64 string or a remote URL.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::ServicesApi.new
optimize_document_request = PDFGeneratorAPI::OptimizeBase64.new({file_base64: 'file_base64_example'}) # OptimizeDocumentRequest | 

begin
  # Optimize document
  result = api_instance.optimize_document(optimize_document_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->optimize_document: #{e}"
end
```

#### Using the optimize_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject12>, Integer, Hash)> optimize_document_with_http_info(optimize_document_request)

```ruby
begin
  # Optimize document
  data, status_code, headers = api_instance.optimize_document_with_http_info(optimize_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject12>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling ServicesApi->optimize_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **optimize_document_request** | [**OptimizeDocumentRequest**](OptimizeDocumentRequest.md) |  |  |

### Return type

[**InlineObject12**](InlineObject12.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


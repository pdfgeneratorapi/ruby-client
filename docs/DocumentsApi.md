# PDFGeneratorAPI::DocumentsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_document**](DocumentsApi.md#generate_document) | **POST** /documents/generate | Generate document |
| [**generate_document_asynchronous**](DocumentsApi.md#generate_document_asynchronous) | **POST** /documents/generate/async | Generate document (async) |
| [**generate_document_batch**](DocumentsApi.md#generate_document_batch) | **POST** /documents/generate/batch | Generate document (batch) |
| [**generate_document_batch_asynchronous**](DocumentsApi.md#generate_document_batch_asynchronous) | **POST** /documents/generate/batch/async | Generate document (batch + async) |
| [**get_documents**](DocumentsApi.md#get_documents) | **GET** /documents | Get documents |


## generate_document

> <GenerateDocument201Response> generate_document(generate_document_request)

Generate document

Merges template with data and returns base64 encoded document or a public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
generate_document_request = PDFGeneratorAPI::GenerateDocumentRequest.new # GenerateDocumentRequest | Request parameters, including template id, data and formats.

begin
  # Generate document
  result = api_instance.generate_document(generate_document_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document: #{e}"
end
```

#### Using the generate_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateDocument201Response>, Integer, Hash)> generate_document_with_http_info(generate_document_request)

```ruby
begin
  # Generate document
  data, status_code, headers = api_instance.generate_document_with_http_info(generate_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateDocument201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_request** | [**GenerateDocumentRequest**](GenerateDocumentRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**GenerateDocument201Response**](GenerateDocument201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_document_asynchronous

> <GenerateDocumentAsynchronous201Response> generate_document_asynchronous(generate_document_asynchronous_request)

Generate document (async)

Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example payload for callback URL:* ``` {   \"response\": \"https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\",   \"meta\": {     \"name\": \"a2bd25b8921f3dc7a440fd7f427f90a4.pdf\",     \"display_name\": \"a2bd25b8921f3dc7a440fd7f427f90a4\",     \"encoding\": \"binary\",     \"content-type\": \"application/pdf\"   } } ``` 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
generate_document_asynchronous_request = PDFGeneratorAPI::GenerateDocumentAsynchronousRequest.new # GenerateDocumentAsynchronousRequest | Request parameters, including template id, data and formats.

begin
  # Generate document (async)
  result = api_instance.generate_document_asynchronous(generate_document_asynchronous_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_asynchronous: #{e}"
end
```

#### Using the generate_document_asynchronous_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateDocumentAsynchronous201Response>, Integer, Hash)> generate_document_asynchronous_with_http_info(generate_document_asynchronous_request)

```ruby
begin
  # Generate document (async)
  data, status_code, headers = api_instance.generate_document_asynchronous_with_http_info(generate_document_asynchronous_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateDocumentAsynchronous201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_asynchronous_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_asynchronous_request** | [**GenerateDocumentAsynchronousRequest**](GenerateDocumentAsynchronousRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**GenerateDocumentAsynchronous201Response**](GenerateDocumentAsynchronous201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_document_batch

> <GenerateDocument201Response> generate_document_batch(generate_document_batch_request)

Generate document (batch)

Allows to merge multiple templates with data and returns base64 encoded document or public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
generate_document_batch_request = PDFGeneratorAPI::GenerateDocumentBatchRequest.new # GenerateDocumentBatchRequest | Request parameters, including template id, data and formats.

begin
  # Generate document (batch)
  result = api_instance.generate_document_batch(generate_document_batch_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_batch: #{e}"
end
```

#### Using the generate_document_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateDocument201Response>, Integer, Hash)> generate_document_batch_with_http_info(generate_document_batch_request)

```ruby
begin
  # Generate document (batch)
  data, status_code, headers = api_instance.generate_document_batch_with_http_info(generate_document_batch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateDocument201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_batch_request** | [**GenerateDocumentBatchRequest**](GenerateDocumentBatchRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**GenerateDocument201Response**](GenerateDocument201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_document_batch_asynchronous

> <GenerateDocumentAsynchronous201Response> generate_document_batch_asynchronous(generate_document_batch_asynchronous_request)

Generate document (batch + async)

Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example payload for callback URL:* ``` {   \"response\": \"https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\",   \"meta\": {     \"name\": \"a2bd25b8921f3dc7a440fd7f427f90a4.pdf\",     \"display_name\": \"a2bd25b8921f3dc7a440fd7f427f90a4\",     \"encoding\": \"binary\",     \"content-type\": \"application/pdf\"   } } ``` 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
generate_document_batch_asynchronous_request = PDFGeneratorAPI::GenerateDocumentBatchAsynchronousRequest.new # GenerateDocumentBatchAsynchronousRequest | Request parameters, including template id, data and formats.

begin
  # Generate document (batch + async)
  result = api_instance.generate_document_batch_asynchronous(generate_document_batch_asynchronous_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_batch_asynchronous: #{e}"
end
```

#### Using the generate_document_batch_asynchronous_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateDocumentAsynchronous201Response>, Integer, Hash)> generate_document_batch_asynchronous_with_http_info(generate_document_batch_asynchronous_request)

```ruby
begin
  # Generate document (batch + async)
  data, status_code, headers = api_instance.generate_document_batch_asynchronous_with_http_info(generate_document_batch_asynchronous_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateDocumentAsynchronous201Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_batch_asynchronous_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_batch_asynchronous_request** | [**GenerateDocumentBatchAsynchronousRequest**](GenerateDocumentBatchAsynchronousRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**GenerateDocumentAsynchronous201Response**](GenerateDocumentAsynchronous201Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_documents

> <GetDocuments200Response> get_documents(opts)

Get documents

Returns a list of generated documents created by authorized workspace and stored in PDF Generator API. If master user is specified as workspace in JWT then all documents created in the organization are returned. NB! This endpoint returns only documents generated using the output=url option.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::DocumentsApi.new
opts = {
  start_date: '2022-08-01 12:00:00', # String | Start date. Format: Y-m-d H:i:s
  end_date: '2022-08-05 12:00:00', # String | End date. Format: Y-m-d H:i:s. Defaults to current timestamp
  page: 1, # Integer | Pagination: page to return
  per_page: 20 # Integer | Pagination: How many records to return per page
}

begin
  # Get documents
  result = api_instance.get_documents(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_documents: #{e}"
end
```

#### Using the get_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDocuments200Response>, Integer, Hash)> get_documents_with_http_info(opts)

```ruby
begin
  # Get documents
  data, status_code, headers = api_instance.get_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDocuments200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Start date. Format: Y-m-d H:i:s | [optional] |
| **end_date** | **String** | End date. Format: Y-m-d H:i:s. Defaults to current timestamp | [optional] |
| **page** | **Integer** | Pagination: page to return | [optional][default to 1] |
| **per_page** | **Integer** | Pagination: How many records to return per page | [optional][default to 15] |

### Return type

[**GetDocuments200Response**](GetDocuments200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


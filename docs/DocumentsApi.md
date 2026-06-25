# PDFGeneratorAPI::DocumentsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_document**](DocumentsApi.md#delete_document) | **DELETE** /documents/{publicId}/actions | Delete document |
| [**generate_document**](DocumentsApi.md#generate_document) | **POST** /documents/generate | Generate document |
| [**generate_document_asynchronous**](DocumentsApi.md#generate_document_asynchronous) | **POST** /documents/generate/async | Generate document (async) |
| [**generate_document_batch**](DocumentsApi.md#generate_document_batch) | **POST** /documents/generate/batch | Generate document (batch) |
| [**generate_document_batch_asynchronous**](DocumentsApi.md#generate_document_batch_asynchronous) | **POST** /documents/generate/batch/async | Generate document (batch + async) |
| [**get_async_job_status**](DocumentsApi.md#get_async_job_status) | **GET** /documents/async/{jobId} | Get job status |
| [**get_document**](DocumentsApi.md#get_document) | **GET** /documents/{publicId} | Get document |
| [**get_document_actions**](DocumentsApi.md#get_document_actions) | **GET** /documents/{publicId}/actions | Get document actions |
| [**get_document_versions**](DocumentsApi.md#get_document_versions) | **GET** /documents/{publicId}/versions | Get document versions |
| [**get_documents**](DocumentsApi.md#get_documents) | **GET** /documents | Get documents |
| [**store_document**](DocumentsApi.md#store_document) | **POST** /documents | Store document |


## delete_document

> delete_document(public_id)

Delete document

Delete document from the Document Storage

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
public_id = 'bac8381bce1982e5f6957a0f52371336' # String | Resource public id

begin
  # Delete document
  api_instance.delete_document(public_id)
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->delete_document: #{e}"
end
```

#### Using the delete_document_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_document_with_http_info(public_id)

```ruby
begin
  # Delete document
  data, status_code, headers = api_instance.delete_document_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->delete_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | Resource public id |  |

### Return type

nil (empty response body)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_document

> <InlineObject9> generate_document(generate_document_request)

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

> <Array(<InlineObject9>, Integer, Hash)> generate_document_with_http_info(generate_document_request)

```ruby
begin
  # Generate document
  data, status_code, headers = api_instance.generate_document_with_http_info(generate_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_request** | [**GenerateDocumentRequest**](GenerateDocumentRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_document_asynchronous

> <InlineObject22> generate_document_asynchronous(generate_document_asynchronous_request)

Generate document (async)

Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example response from callback URL:* ``` {   \"response\": \"https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\",   \"meta\": {     \"name\": \"a2bd25b8921f3dc7a440fd7f427f90a4.pdf\",     \"display_name\": \"a2bd25b8921f3dc7a440fd7f427f90a4\",     \"encoding\": \"binary\",     \"content-type\": \"application/pdf\"   } } ``` 

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

> <Array(<InlineObject22>, Integer, Hash)> generate_document_asynchronous_with_http_info(generate_document_asynchronous_request)

```ruby
begin
  # Generate document (async)
  data, status_code, headers = api_instance.generate_document_asynchronous_with_http_info(generate_document_asynchronous_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject22>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_asynchronous_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_asynchronous_request** | [**GenerateDocumentAsynchronousRequest**](GenerateDocumentAsynchronousRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**InlineObject22**](InlineObject22.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_document_batch

> <InlineObject9> generate_document_batch(generate_document_batch_request)

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

> <Array(<InlineObject9>, Integer, Hash)> generate_document_batch_with_http_info(generate_document_batch_request)

```ruby
begin
  # Generate document (batch)
  data, status_code, headers = api_instance.generate_document_batch_with_http_info(generate_document_batch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_batch_request** | [**GenerateDocumentBatchRequest**](GenerateDocumentBatchRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_document_batch_asynchronous

> <InlineObject22> generate_document_batch_asynchronous(generate_document_batch_asynchronous_request)

Generate document (batch + async)

Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example response from callback URL:* ``` {   \"response\": \"https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\",   \"meta\": {     \"name\": \"a2bd25b8921f3dc7a440fd7f427f90a4.pdf\",     \"display_name\": \"a2bd25b8921f3dc7a440fd7f427f90a4\",     \"encoding\": \"binary\",     \"content-type\": \"application/pdf\"   } } ``` 

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

> <Array(<InlineObject22>, Integer, Hash)> generate_document_batch_asynchronous_with_http_info(generate_document_batch_asynchronous_request)

```ruby
begin
  # Generate document (batch + async)
  data, status_code, headers = api_instance.generate_document_batch_asynchronous_with_http_info(generate_document_batch_asynchronous_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject22>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->generate_document_batch_asynchronous_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_document_batch_asynchronous_request** | [**GenerateDocumentBatchAsynchronousRequest**](GenerateDocumentBatchAsynchronousRequest.md) | Request parameters, including template id, data and formats. |  |

### Return type

[**InlineObject22**](InlineObject22.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_async_job_status

> <InlineObject13> get_async_job_status(job_id)

Get job status

Returns status of an async job

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
job_id = '968b8a3a-e8ac-49cc-a670-25db545813ed' # String | Job id

begin
  # Get job status
  result = api_instance.get_async_job_status(job_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_async_job_status: #{e}"
end
```

#### Using the get_async_job_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject13>, Integer, Hash)> get_async_job_status_with_http_info(job_id)

```ruby
begin
  # Get job status
  data, status_code, headers = api_instance.get_async_job_status_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject13>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_async_job_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | Job id |  |

### Return type

[**InlineObject13**](InlineObject13.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_document

> <InlineObject11> get_document(public_id)

Get document

Returns document stored in the Document Storage

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
public_id = 'bac8381bce1982e5f6957a0f52371336' # String | Resource public id

begin
  # Get document
  result = api_instance.get_document(public_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_document: #{e}"
end
```

#### Using the get_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject11>, Integer, Hash)> get_document_with_http_info(public_id)

```ruby
begin
  # Get document
  data, status_code, headers = api_instance.get_document_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject11>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | Resource public id |  |

### Return type

[**InlineObject11**](InlineObject11.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_document_actions

> <InlineObject17> get_document_actions(public_id)

Get document actions

Returns a list of actions performed on a stored document

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
public_id = 'bac8381bce1982e5f6957a0f52371336' # String | Resource public id

begin
  # Get document actions
  result = api_instance.get_document_actions(public_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_document_actions: #{e}"
end
```

#### Using the get_document_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject17>, Integer, Hash)> get_document_actions_with_http_info(public_id)

```ruby
begin
  # Get document actions
  data, status_code, headers = api_instance.get_document_actions_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject17>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_document_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | Resource public id |  |

### Return type

[**InlineObject17**](InlineObject17.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_document_versions

> <InlineObject16> get_document_versions(public_id)

Get document versions

Returns a list of versions for a stored document

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
public_id = 'bac8381bce1982e5f6957a0f52371336' # String | Resource public id

begin
  # Get document versions
  result = api_instance.get_document_versions(public_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_document_versions: #{e}"
end
```

#### Using the get_document_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject16>, Integer, Hash)> get_document_versions_with_http_info(public_id)

```ruby
begin
  # Get document versions
  data, status_code, headers = api_instance.get_document_versions_with_http_info(public_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject16>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_document_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** | Resource public id |  |

### Return type

[**InlineObject16**](InlineObject16.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_documents

> <InlineObject15> get_documents(opts)

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
  template_id: 19375, # Integer | Template unique identifier
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

> <Array(<InlineObject15>, Integer, Hash)> get_documents_with_http_info(opts)

```ruby
begin
  # Get documents
  data, status_code, headers = api_instance.get_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject15>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->get_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier | [optional] |
| **start_date** | **String** | Start date. Format: Y-m-d H:i:s | [optional] |
| **end_date** | **String** | End date. Format: Y-m-d H:i:s. Defaults to current timestamp | [optional] |
| **page** | **Integer** | Pagination: page to return | [optional][default to 1] |
| **per_page** | **Integer** | Pagination: How many records to return per page | [optional][default to 15] |

### Return type

[**InlineObject15**](InlineObject15.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## store_document

> <InlineObject11> store_document(store_document_request)

Store document

Uploads a PDF as a URL or a base64 encoded string.

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
store_document_request = PDFGeneratorAPI::StoreDocumentRequest.new # StoreDocumentRequest | Document source and optional metadata. Exactly one of `file_base64` or `file_url` is required.

begin
  # Store document
  result = api_instance.store_document(store_document_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->store_document: #{e}"
end
```

#### Using the store_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject11>, Integer, Hash)> store_document_with_http_info(store_document_request)

```ruby
begin
  # Store document
  data, status_code, headers = api_instance.store_document_with_http_info(store_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject11>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling DocumentsApi->store_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_document_request** | [**StoreDocumentRequest**](StoreDocumentRequest.md) | Document source and optional metadata. Exactly one of &#x60;file_base64&#x60; or &#x60;file_url&#x60; is required. |  |

### Return type

[**InlineObject11**](InlineObject11.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


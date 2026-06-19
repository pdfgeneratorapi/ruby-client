# PDFGeneratorAPI::EInvoicesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_e_invoice**](EInvoicesApi.md#create_e_invoice) | **POST** /einvoice | Create eInvoice |
| [**create_factur_xe_invoice**](EInvoicesApi.md#create_factur_xe_invoice) | **POST** /einvoice/facturx | Create Factur-X eInvoice |
| [**create_x_rechnung_e_invoice**](EInvoicesApi.md#create_x_rechnung_e_invoice) | **POST** /einvoice/xrechnung | Create XRechnung eInvoice |
| [**get_e_invoice_schema**](EInvoicesApi.md#get_e_invoice_schema) | **GET** /einvoice/schema | Get schema |


## create_e_invoice

> <InlineObject> create_e_invoice(create_e_invoice_request)

Create eInvoice

This endpoint transforms a JSON payload into an XML-based e-invoice that is fully compliant with the European EN 16931 standard. The generated output can be formatted in either UBL (Universal Business Language) or CII (Cross-Industry Invoice) syntax, ensuring interoperability across B2B and B2G platforms. The JSON payload follows Peppol BIS Billing 3.0 UBL Invoice described here: https://docs.peppol.eu/poacc/billing/3.0/

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::EInvoicesApi.new
create_e_invoice_request = PDFGeneratorAPI::CreateEInvoiceRequest.new({data: 3.56}) # CreateEInvoiceRequest | eInvoice conversion

begin
  # Create eInvoice
  result = api_instance.create_e_invoice(create_e_invoice_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->create_e_invoice: #{e}"
end
```

#### Using the create_e_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> create_e_invoice_with_http_info(create_e_invoice_request)

```ruby
begin
  # Create eInvoice
  data, status_code, headers = api_instance.create_e_invoice_with_http_info(create_e_invoice_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->create_e_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_e_invoice_request** | [**CreateEInvoiceRequest**](CreateEInvoiceRequest.md) | eInvoice conversion |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_factur_xe_invoice

> <InlineObject9> create_factur_xe_invoice(create_factur_xe_invoice_request)

Create Factur-X eInvoice

This endpoint transforms a JSON payload a Factur-X e-invoice that is fully compliant with the European EN 16931 standard. The generated output is always a PDF document, embedding a structured CII (Cross-Industry Invoice) XML according to the Factur-X format into a human-readable invoice, ensuring interoperability across B2B and B2G platforms. The JSON payload follows Peppol BIS Billing 3.0 UBL Invoice described here: https://docs.peppol.eu/poacc/billing/3.0/

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::EInvoicesApi.new
create_factur_xe_invoice_request = PDFGeneratorAPI::CreateFacturXEInvoiceRequest.new({template: PDFGeneratorAPI::CreateFacturXEInvoiceRequestTemplate.new}) # CreateFacturXEInvoiceRequest | eInvoice conversion

begin
  # Create Factur-X eInvoice
  result = api_instance.create_factur_xe_invoice(create_factur_xe_invoice_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->create_factur_xe_invoice: #{e}"
end
```

#### Using the create_factur_xe_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject9>, Integer, Hash)> create_factur_xe_invoice_with_http_info(create_factur_xe_invoice_request)

```ruby
begin
  # Create Factur-X eInvoice
  data, status_code, headers = api_instance.create_factur_xe_invoice_with_http_info(create_factur_xe_invoice_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject9>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->create_factur_xe_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_factur_xe_invoice_request** | [**CreateFacturXEInvoiceRequest**](CreateFacturXEInvoiceRequest.md) | eInvoice conversion |  |

### Return type

[**InlineObject9**](InlineObject9.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_x_rechnung_e_invoice

> <InlineObject> create_x_rechnung_e_invoice(create_e_invoice_request)

Create XRechnung eInvoice

This endpoint transforms a JSON payload into an XML-based XRechnung e-invoice that is fully compliant with the European EN 16931 standard. The generated output follows the XRechnung format and can be formatted in either UBL (Universal Business Language) or CII (Cross-Industry Invoice) syntax, ensuring interoperability across B2B and B2G platforms. The JSON payload follows Peppol BIS Billing 3.0 UBL Invoice described here: https://docs.peppol.eu/poacc/billing/3.0/

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::EInvoicesApi.new
create_e_invoice_request = PDFGeneratorAPI::CreateEInvoiceRequest.new({data: 3.56}) # CreateEInvoiceRequest | eInvoice conversion

begin
  # Create XRechnung eInvoice
  result = api_instance.create_x_rechnung_e_invoice(create_e_invoice_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->create_x_rechnung_e_invoice: #{e}"
end
```

#### Using the create_x_rechnung_e_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> create_x_rechnung_e_invoice_with_http_info(create_e_invoice_request)

```ruby
begin
  # Create XRechnung eInvoice
  data, status_code, headers = api_instance.create_x_rechnung_e_invoice_with_http_info(create_e_invoice_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->create_x_rechnung_e_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_e_invoice_request** | [**CreateEInvoiceRequest**](CreateEInvoiceRequest.md) | eInvoice conversion |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_e_invoice_schema

> Object get_e_invoice_schema

Get schema

Returns e-invoice JSON schema which defines the structure of the e-invoice.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::EInvoicesApi.new

begin
  # Get schema
  result = api_instance.get_e_invoice_schema
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->get_e_invoice_schema: #{e}"
end
```

#### Using the get_e_invoice_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_e_invoice_schema_with_http_info

```ruby
begin
  # Get schema
  data, status_code, headers = api_instance.get_e_invoice_schema_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling EInvoicesApi->get_e_invoice_schema_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


=begin
#PDF Generator API

## Introduction [PDF Generator API](https://pdfgeneratorapi.com) allows you easily generate transactional PDF documents and reduce the development and support costs by enabling your users to create and manage their document templates using a browser-based drag-and-drop document editor.  The PDF Generator API features a web API architecture, allowing you to code in the language of your choice. This API supports the JSON media type, and uses UTF-8 character encoding.  ## Base URL The base URL for all the API endpoints is `https://us1.pdfgeneratorapi.com/api/v4`  For example * `https://us1.pdfgeneratorapi.com/api/v4/templates` * `https://us1.pdfgeneratorapi.com/api/v4/workspaces` * `https://us1.pdfgeneratorapi.com/api/v4/templates/123123`  ## Editor PDF Generator API comes with a powerful drag & drop editor that allows to create any kind of document templates, from barcode labels to invoices, quotes and reports. You can find tutorials and videos from our [Support Portal](https://support.pdfgeneratorapi.com). * [Component specification](https://support.pdfgeneratorapi.com/en/category/components-1ffseaj/) * [Expression Language documentation](https://support.pdfgeneratorapi.com/en/category/expression-language-q203pa/) * [Frequently asked questions and answers](https://support.pdfgeneratorapi.com/en/category/qanda-1ov519d/)  ## Definitions  ### Organization Organization is a group of workspaces owned by your account.  ### Workspace Workspace contains templates. Each workspace has access to their own templates and organization default templates.  ### Master Workspace Master Workspace is the main/default workspace of your Organization. The Master Workspace identifier is the email you signed up with.  ### Default Template Default template is a template that is available for all workspaces by default. You can set the template access type under Page Setup. If template has \"Organization\" access then your users can use them from the \"New\" menu in the Editor.  ### Data Field Data Field is a placeholder for the specific data in your JSON data set. In this example JSON you can access the buyer name using Data Field `{paymentDetails::buyerName}`. The separator between depth levels is :: (two colons). When designing the template you don’t have to know every Data Field, our editor automatically extracts all the available fields from your data set and provides an easy way to insert them into the template. ``` {     \"documentNumber\": 1,     \"paymentDetails\": {         \"method\": \"Credit Card\",         \"buyerName\": \"John Smith\"     },     \"items\": [         {             \"id\": 1,             \"name\": \"Item one\"         }     ] } ```  ## Rate limiting Our API endpoints use IP-based rate limiting and allow you to make up to 2 requests per second and 60 requests per minute. If you make more requests, you will receive a response with HTTP code 429.  Response headers contain additional values:  | Header   | Description                    | |--------|--------------------------------| | X-RateLimit-Limit    | Maximum requests per minute                   | | X-RateLimit-Remaining    | The requests remaining in the current minute               | | Retry-After     | How many seconds you need to wait until you are allowed to make requests |  *  *  *  *  *  # Libraries and SDKs ## Postman Collection We have created a [Postman Collection](https://www.postman.com/pdfgeneratorapi/workspace/pdf-generator-api-public-workspace/overview) so you can easily test all the API endpoints without developing and code. You can download the collection [here](https://www.postman.com/pdfgeneratorapi/workspace/pdf-generator-api-public-workspace/collection/11578263-42fed446-af7e-4266-84e1-69e8c1752e93).  ## Client Libraries All our Client Libraries are auto-generated using [OpenAPI Generator](https://openapi-generator.tech/) which uses the OpenAPI v3 specification to automatically generate a client library in specific programming language.  * [PHP Client](https://github.com/pdfgeneratorapi/php-client) * [Java Client](https://github.com/pdfgeneratorapi/java-client) * [Ruby Client](https://github.com/pdfgeneratorapi/ruby-client) * [Python Client](https://github.com/pdfgeneratorapi/python-client) * [Javascript Client](https://github.com/pdfgeneratorapi/javascript-client)  We have validated the generated libraries, but let us know if you find any anomalies in the client code. *  *  *  *  *  # Authentication The PDF Generator API uses __JSON Web Tokens (JWT)__ to authenticate all API requests. These tokens offer a method to establish secure server-to-server authentication by transferring a compact JSON object with a signed payload of your account’s API Key and Secret. When authenticating to the PDF Generator API, a JWT should be generated uniquely by a __server-side application__ and included as a __Bearer Token__ in the header of each request.   <SecurityDefinitions />  ## Accessing your API Key and Secret You can find your __API Key__ and __API Secret__ from the __Account Settings__ page after you login to PDF Generator API [here](https://pdfgeneratorapi.com/login).  ## Creating a JWT JSON Web Tokens are composed of three sections: a header, a payload (containing a claim set), and a signature. The header and payload are JSON objects, which are serialized to UTF-8 bytes, then encoded using base64url encoding.  The JWT's header, payload, and signature are concatenated with periods (.). As a result, a JWT typically takes the following form: ``` {Base64url encoded header}.{Base64url encoded payload}.{Base64url encoded signature} ```  We recommend and support libraries provided on [jwt.io](https://jwt.io/). While other libraries can create JWT, these recommended libraries are the most robust.  ### Header Property `alg` defines which signing algorithm is being used. PDF Generator API users HS256. Property `typ` defines the type of token and it is always JWT. ``` {   \"alg\": \"HS256\",   \"typ\": \"JWT\" } ```  ### Payload The second part of the token is the payload, which contains the claims  or the pieces of information being passed about the user and any metadata required. It is mandatory to specify the following claims: * issuer (`iss`): Your API key * subject (`sub`): Workspace identifier * expiration time (`exp`): Timestamp (unix epoch time) until the token is valid. It is highly recommended to set the exp timestamp for a short period, i.e. a matter of seconds. This way, if a token is intercepted or shared, the token will only be valid for a short period of time.  ``` {   \"iss\": \"ad54aaff89ffdfeff178bb8a8f359b29fcb20edb56250b9f584aa2cb0162ed4a\",   \"sub\": \"demo.example@actualreports.com\",   \"exp\": 1586112639 } ```  ### Payload for Partners Our partners can send their unique identifier (provided by us) in JWT's partner_id claim. If the `partner_id` value is specified in the JWT, the organization making the request is automatically connected to the partner account. * Partner ID (`partner_id`): Unique identifier provide by PDF Generator API team  ``` {   \"iss\": \"ad54aaff89ffdfeff178bb8a8f359b29fcb20edb56250b9f584aa2cb0162ed4a\",   \"sub\": \"demo.example@actualreports.com\",   \"partner_id\": \"my-partner-identifier\",   \"exp\": 1586112639 } ```  ### Signature To create the signature part you have to take the encoded header, the encoded payload, a secret, the algorithm specified in the header, and sign that. The signature is used to verify the message wasn't changed along the way, and, in the case of tokens signed with a private key, it can also verify that the sender of the JWT is who it says it is. ``` HMACSHA256(     base64UrlEncode(header) + \".\" +     base64UrlEncode(payload),     API_SECRET) ```  ### Putting all together The output is three Base64-URL strings separated by dots. The following shows a JWT that has the previous header and payload encoded, and it is signed with a secret. ``` eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0.SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q  // Base64 encoded header: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9 // Base64 encoded payload: eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0 // Signature: SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q ```  ## Temporary JWTs You can create a temporary token in [Account Settings](https://pdfgeneratorapi.com/account/organization) page after you login to PDF Generator API. The generated token uses your email address as the subject (`sub`) value and is valid for __15 minutes__. You can also use [jwt.io](https://jwt.io/) to generate test tokens for your API calls. These test tokens should never be used in production applications. *  *  *  *  *  # Error codes  | Code   | Description                    | |--------|--------------------------------| | 401    | Unauthorized                   | | 402    | Payment Required               | | 403    | Forbidden                      | | 404    | Not Found                      | | 422    | Unprocessable Entity           | | 429    | Too Many Requests              | | 500    | Internal Server Error          |  ## 401 Unauthorized | Description                                                             | |-------------------------------------------------------------------------| | Authentication failed: request expired                                  | | Authentication failed: workspace missing                                | | Authentication failed: key missing                                      | | Authentication failed: property 'iss' (issuer) missing in JWT           | | Authentication failed: property 'sub' (subject) missing in JWT          | | Authentication failed: property 'exp' (expiration time) missing in JWT  | | Authentication failed: incorrect signature                              |  ## 402 Payment Required | Description                                                             | |-------------------------------------------------------------------------| | Your account is suspended, please upgrade your account                  |  ## 403 Forbidden | Description                                                             | |-------------------------------------------------------------------------| | Your account has exceeded the monthly document generation limit.        | | Access not granted: You cannot delete master workspace via API          | | Access not granted: Template is not accessible by this organization     | | Your session has expired, please close and reopen the editor.           |  ## 404 Entity not found | Description                                                             | |-------------------------------------------------------------------------| | Entity not found                                                        | | Resource not found                                                      | | None of the templates is available for the workspace.                   |  ## 422 Unprocessable Entity | Description                                                             | |-------------------------------------------------------------------------| | Unable to parse JSON, please check formatting                           | | Required parameter missing                                              | | Required parameter missing: template definition not defined             | | Required parameter missing: template not defined                        |  ## 429 Too Many Requests | Description                                                             | |-------------------------------------------------------------------------| | You can make up to 2 requests per second and 60 requests per minute.   |  *  *  *  *  * 

The version of the OpenAPI document: 4.0.12
Contact: support@pdfgeneratorapi.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'cgi'

module PDFGeneratorAPI
  class ServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add watermark
    # Adds a text or an image watermark to PDF document from base64 string or a remote URL.
    # @param add_watermark_request [AddWatermarkRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AddWatermark201Response]
    def add_watermark(add_watermark_request, opts = {})
      data, _status_code, _headers = add_watermark_with_http_info(add_watermark_request, opts)
      data
    end

    # Add watermark
    # Adds a text or an image watermark to PDF document from base64 string or a remote URL.
    # @param add_watermark_request [AddWatermarkRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddWatermark201Response, Integer, Hash)>] AddWatermark201Response data, response status code and response headers
    def add_watermark_with_http_info(add_watermark_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.add_watermark ...'
      end
      # verify the required parameter 'add_watermark_request' is set
      if @api_client.config.client_side_validation && add_watermark_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_watermark_request' when calling ServicesApi.add_watermark"
      end
      # resource path
      local_var_path = '/pdfservices/watermark'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_watermark_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddWatermark201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"ServicesApi.add_watermark",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#add_watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Decrypt document
    # Decrypts an encrypted PDF document from base64 string or a remote URL.
    # @param encrypt_document_request [EncryptDocumentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AddWatermark201Response]
    def decrypt_document(encrypt_document_request, opts = {})
      data, _status_code, _headers = decrypt_document_with_http_info(encrypt_document_request, opts)
      data
    end

    # Decrypt document
    # Decrypts an encrypted PDF document from base64 string or a remote URL.
    # @param encrypt_document_request [EncryptDocumentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddWatermark201Response, Integer, Hash)>] AddWatermark201Response data, response status code and response headers
    def decrypt_document_with_http_info(encrypt_document_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.decrypt_document ...'
      end
      # verify the required parameter 'encrypt_document_request' is set
      if @api_client.config.client_side_validation && encrypt_document_request.nil?
        fail ArgumentError, "Missing the required parameter 'encrypt_document_request' when calling ServicesApi.decrypt_document"
      end
      # resource path
      local_var_path = '/pdfservices/decrypt'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(encrypt_document_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddWatermark201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"ServicesApi.decrypt_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#decrypt_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Encrypt document
    # Encrypts a PDF document from base64 string or a remote URL.
    # @param encrypt_document_request [EncryptDocumentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AddWatermark201Response]
    def encrypt_document(encrypt_document_request, opts = {})
      data, _status_code, _headers = encrypt_document_with_http_info(encrypt_document_request, opts)
      data
    end

    # Encrypt document
    # Encrypts a PDF document from base64 string or a remote URL.
    # @param encrypt_document_request [EncryptDocumentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddWatermark201Response, Integer, Hash)>] AddWatermark201Response data, response status code and response headers
    def encrypt_document_with_http_info(encrypt_document_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.encrypt_document ...'
      end
      # verify the required parameter 'encrypt_document_request' is set
      if @api_client.config.client_side_validation && encrypt_document_request.nil?
        fail ArgumentError, "Missing the required parameter 'encrypt_document_request' when calling ServicesApi.encrypt_document"
      end
      # resource path
      local_var_path = '/pdfservices/encrypt'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(encrypt_document_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddWatermark201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"ServicesApi.encrypt_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#encrypt_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract form fields
    # Extracts form fields and their metadata from a PDF document using base64 string or a remote URL.
    # @param extract_form_fields_request [ExtractFormFieldsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExtractFormFields200Response]
    def extract_form_fields(extract_form_fields_request, opts = {})
      data, _status_code, _headers = extract_form_fields_with_http_info(extract_form_fields_request, opts)
      data
    end

    # Extract form fields
    # Extracts form fields and their metadata from a PDF document using base64 string or a remote URL.
    # @param extract_form_fields_request [ExtractFormFieldsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExtractFormFields200Response, Integer, Hash)>] ExtractFormFields200Response data, response status code and response headers
    def extract_form_fields_with_http_info(extract_form_fields_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.extract_form_fields ...'
      end
      # verify the required parameter 'extract_form_fields_request' is set
      if @api_client.config.client_side_validation && extract_form_fields_request.nil?
        fail ArgumentError, "Missing the required parameter 'extract_form_fields_request' when calling ServicesApi.extract_form_fields"
      end
      # resource path
      local_var_path = '/pdfservices/form/fields'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(extract_form_fields_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExtractFormFields200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"ServicesApi.extract_form_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#extract_form_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fill form fields
    # Fills form fields in a PDF document with provided data from base64 string or a remote URL.
    # @param fill_form_fields_request [FillFormFieldsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AddWatermark201Response]
    def fill_form_fields(fill_form_fields_request, opts = {})
      data, _status_code, _headers = fill_form_fields_with_http_info(fill_form_fields_request, opts)
      data
    end

    # Fill form fields
    # Fills form fields in a PDF document with provided data from base64 string or a remote URL.
    # @param fill_form_fields_request [FillFormFieldsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddWatermark201Response, Integer, Hash)>] AddWatermark201Response data, response status code and response headers
    def fill_form_fields_with_http_info(fill_form_fields_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.fill_form_fields ...'
      end
      # verify the required parameter 'fill_form_fields_request' is set
      if @api_client.config.client_side_validation && fill_form_fields_request.nil?
        fail ArgumentError, "Missing the required parameter 'fill_form_fields_request' when calling ServicesApi.fill_form_fields"
      end
      # resource path
      local_var_path = '/pdfservices/form/fill'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fill_form_fields_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddWatermark201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"ServicesApi.fill_form_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#fill_form_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Optimize document
    # Optimizes the size of a PDF document from base64 string or a remote URL.
    # @param optimize_document_request [OptimizeDocumentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OptimizeDocument201Response]
    def optimize_document(optimize_document_request, opts = {})
      data, _status_code, _headers = optimize_document_with_http_info(optimize_document_request, opts)
      data
    end

    # Optimize document
    # Optimizes the size of a PDF document from base64 string or a remote URL.
    # @param optimize_document_request [OptimizeDocumentRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OptimizeDocument201Response, Integer, Hash)>] OptimizeDocument201Response data, response status code and response headers
    def optimize_document_with_http_info(optimize_document_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicesApi.optimize_document ...'
      end
      # verify the required parameter 'optimize_document_request' is set
      if @api_client.config.client_side_validation && optimize_document_request.nil?
        fail ArgumentError, "Missing the required parameter 'optimize_document_request' when calling ServicesApi.optimize_document"
      end
      # resource path
      local_var_path = '/pdfservices/optimize'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(optimize_document_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OptimizeDocument201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"ServicesApi.optimize_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicesApi#optimize_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

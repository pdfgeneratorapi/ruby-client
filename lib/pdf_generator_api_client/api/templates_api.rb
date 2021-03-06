=begin
#PDF Generator API

## Introduction PDF Generator API allows you easily generate transactional PDF documents and reduce the development and support costs by enabling your users to create and manage their document templates using a browser-based drag-and-drop document editor.  The PDF Generator API features a web API architecture, allowing you to code in the language of your choice. This API supports the JSON media type, and uses UTF-8 character encoding.  You can find our previous API documentation page with references to Simple and Signature authentication [here](https://docs.pdfgeneratorapi.com/legacy).  ## Base URL The base URL for all the API endpoints is `https://us1.pdfgeneratorapi.com/api/v3`  For example * `https://us1.pdfgeneratorapi.com/api/v3/templates` * `https://us1.pdfgeneratorapi.com/api/v3/workspaces` * `https://us1.pdfgeneratorapi.com/api/v3/templates/123123`  ## Editor PDF Generator API comes with a powerful drag & drop editor that allows to create any kind of document templates, from barcode labels to invoices, quotes and reports. You can find tutorials and videos from our [Support Portal](https://support.pdfgeneratorapi.com). * [Component specification](https://support.pdfgeneratorapi.com/en/category/components-1ffseaj/) * [Expression Language documentation](https://support.pdfgeneratorapi.com/en/category/expression-language-q203pa/) * [Frequently asked questions and answers](https://support.pdfgeneratorapi.com/en/category/qanda-1ov519d/)  ## Definitions  ### Organization Organization is a group of workspaces owned by your account.  ### Workspace Workspace contains templates. Each workspace has access to their own templates and organization default templates.  ### Master Workspace Master Workspace is the main/default workspace of your Organization. The Master Workspace identifier is the email you signed up with.  ### Default Template Default template is a template that is available for all workspaces by default. You can set the template access type under Page Setup. If template has \"Organization\" access then your users can use them from the \"New\" menu in the Editor.  ### Data Field Data Field is a placeholder for the specific data in your JSON data set. In this example JSON you can access the buyer name using Data Field `{paymentDetails::buyerName}`. The separator between depth levels is :: (two colons). When designing the template you don’t have to know every Data Field, our editor automatically extracts all the available fields from your data set and provides an easy way to insert them into the template. ``` {     \"documentNumber\": 1,     \"paymentDetails\": {         \"method\": \"Credit Card\",         \"buyerName\": \"John Smith\"     },     \"items\": [         {             \"id\": 1,             \"name\": \"Item one\"         }     ] } ```  *  *  *  *  * # Authentication The PDF Generator API uses __JSON Web Tokens (JWT)__ to authenticate all API requests. These tokens offer a method to establish secure server-to-server authentication by transferring a compact JSON object with a signed payload of your account’s API Key and Secret. When authenticating to the PDF Generator API, a JWT should be generated uniquely by a __server-side application__ and included as a __Bearer Token__ in the header of each request.  ## Legacy Simple and Signature authentication You can find our legacy documentation for Simple and Signature authentication [here](https://docs.pdfgeneratorapi.com/legacy).  <SecurityDefinitions />  ## Accessing your API Key and Secret You can find your __API Key__ and __API Secret__ from the __Account Settings__ page after you login to PDF Generator API [here](https://pdfgeneratorapi.com/login).  ## Creating a JWT JSON Web Tokens are composed of three sections: a header, a payload (containing a claim set), and a signature. The header and payload are JSON objects, which are serialized to UTF-8 bytes, then encoded using base64url encoding.  The JWT's header, payload, and signature are concatenated with periods (.). As a result, a JWT typically takes the following form: ``` {Base64url encoded header}.{Base64url encoded payload}.{Base64url encoded signature} ```  We recommend and support libraries provided on [jwt.io](https://jwt.io/). While other libraries can create JWT, these recommended libraries are the most robust.  ### Header Property `alg` defines which signing algorithm is being used. PDF Generator API users HS256. Property `typ` defines the type of token and it is always JWT. ``` {   \"alg\": \"HS256\",   \"typ\": \"JWT\" } ```  ### Payload The second part of the token is the payload, which contains the claims  or the pieces of information being passed about the user and any metadata required. It is mandatory to specify the following claims: * issuer (`iss`): Your API key * subject (`sub`): Workspace identifier  You can also specify the token expiration time (`exp`) which is timestamp in seconds since Epoch (unix epoch time). It is highly recommended to set the exp timestamp for a short period, i.e. a matter of seconds. This way, if a token is intercepted or shared, the token will only be valid for a short period of time.  ``` {   \"iss\": \"ad54aaff89ffdfeff178bb8a8f359b29fcb20edb56250b9f584aa2cb0162ed4a\",   \"sub\": \"demo.example@actualreports.com\",   \"exp\": 1586112639 } ```  ### Signature To create the signature part you have to take the encoded header, the encoded payload, a secret, the algorithm specified in the header, and sign that. The signature is used to verify the message wasn't changed along the way, and, in the case of tokens signed with a private key, it can also verify that the sender of the JWT is who it says it is. ``` HMACSHA256(     base64UrlEncode(header) + \".\" +     base64UrlEncode(payload),     API_SECRET) ```  ### Putting all together The output is three Base64-URL strings separated by dots. The following shows a JWT that has the previous header and payload encoded, and it is signed with a secret. ``` eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0.SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q  // Base64 encoded header: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9 // Base64 encoded payload: eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0 // Signature: SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q ```  ## Testing with JWTs You can create a temporary token in [Account Settings](https://pdfgeneratorapi.com/account/organization) page after you login to PDF Generator API. The generated token uses your email address as the subject (`sub`) value and is valid for __5 minutes__. You can also use [jwt.io](https://jwt.io/) to generate test tokens for your API calls. These test tokens should never be used in production applications. *  *  *  *  *  # Libraries and SDKs ## Postman Collection We have created a [Postman](https://www.postman.com) Collection so you can easily test all the API endpoints wihtout developing and code. You can download the collection [here](https://app.getpostman.com/run-collection/329f09618ec8a957dbc4) or just click the button below.  [![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/329f09618ec8a957dbc4)  ## Client Libraries All our Client Libraries are auto-generated using [OpenAPI Generator](https://openapi-generator.tech/) which uses the OpenAPI v3 specification to automatically generate a client library in specific programming language.  * [PHP Client](https://github.com/pdfgeneratorapi/php-client) * [Java Client](https://github.com/pdfgeneratorapi/java-client) * [Ruby Client](https://github.com/pdfgeneratorapi/ruby-client) * [Python Client](https://github.com/pdfgeneratorapi/python-client) * [Javascript Client](https://github.com/pdfgeneratorapi/javascript-client)  We have validated the generated libraries, but let us know if you find any anomalies in the client code. *  *  *  *  * 

The version of the OpenAPI document: 3.1.1
Contact: support@pdfgeneratorapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module PDFGeneratorAPI
  class TemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Copy template
    # Creates a copy of a template to the workspace specified in authentication parameters.
    # @param template_id [Integer] Template unique identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name for the copied template. If name is not specified then the original name is used.
    # @return [InlineResponse2001]
    def copy_template(template_id, opts = {})
      data, _status_code, _headers = copy_template_with_http_info(template_id, opts)
      data
    end

    # Copy template
    # Creates a copy of a template to the workspace specified in authentication parameters.
    # @param template_id [Integer] Template unique identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name for the copied template. If name is not specified then the original name is used.
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def copy_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.copy_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.copy_template"
      end
      # resource path
      local_var_path = '/templates/{templateId}/copy'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2001' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#copy_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create template
    # Creates a new template. If template configuration is not specified in the request body then an empty template is created. Template is placed to the workspace specified in authentication params. Template configuration must be sent in the request body.
    # @param template_definition_new [TemplateDefinitionNew] Template configuration as JSON string
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def create_template(template_definition_new, opts = {})
      data, _status_code, _headers = create_template_with_http_info(template_definition_new, opts)
      data
    end

    # Create template
    # Creates a new template. If template configuration is not specified in the request body then an empty template is created. Template is placed to the workspace specified in authentication params. Template configuration must be sent in the request body.
    # @param template_definition_new [TemplateDefinitionNew] Template configuration as JSON string
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def create_template_with_http_info(template_definition_new, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.create_template ...'
      end
      # verify the required parameter 'template_definition_new' is set
      if @api_client.config.client_side_validation && template_definition_new.nil?
        fail ArgumentError, "Missing the required parameter 'template_definition_new' when calling TemplatesApi.create_template"
      end
      # resource path
      local_var_path = '/templates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(template_definition_new) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2001' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete template
    # Deletes the template from workspace
    # @param template_id [Integer] Template unique identifier
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def delete_template(template_id, opts = {})
      data, _status_code, _headers = delete_template_with_http_info(template_id, opts)
      data
    end

    # Delete template
    # Deletes the template from workspace
    # @param template_id [Integer] Template unique identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def delete_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.delete_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.delete_template"
      end
      # resource path
      local_var_path = '/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2002' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#delete_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Open editor
    # Returns an unique URL which you can use to redirect your user to the editor form your application or use the generated URL as iframe source to show the editor within your application. 
    # @param template_id [Integer] Template unique identifier
    # @param body [Object] Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language Specify the editor UI language. Defaults to organization editor language.
    # @return [InlineResponse2003]
    def get_editor_url(template_id, body, opts = {})
      data, _status_code, _headers = get_editor_url_with_http_info(template_id, body, opts)
      data
    end

    # Open editor
    # Returns an unique URL which you can use to redirect your user to the editor form your application or use the generated URL as iframe source to show the editor within your application. 
    # @param template_id [Integer] Template unique identifier
    # @param body [Object] Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language Specify the editor UI language. Defaults to organization editor language.
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def get_editor_url_with_http_info(template_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_editor_url ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.get_editor_url"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.get_editor_url"
      end
      allowable_values = ["en", "et", "cs", "sk", "ru"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/templates/{templateId}/editor'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2003' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_editor_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get template
    # Returns template configuration
    # @param template_id [Integer] Template unique identifier
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def get_template(template_id, opts = {})
      data, _status_code, _headers = get_template_with_http_info(template_id, opts)
      data
    end

    # Get template
    # Returns template configuration
    # @param template_id [Integer] Template unique identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.get_template"
      end
      # resource path
      local_var_path = '/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2001' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get templates
    # Returns a list of templates available for the authenticated workspace
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      data
    end

    # Get templates
    # Returns a list of templates available for the authenticated workspace
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_templates ...'
      end
      # resource path
      local_var_path = '/templates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse200' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge template
    # Merges template with data and returns base64 encoded document or a public URL to a document. You can send json encoded data in request body or a public URL to your json file as the data parameter.
    # @param template_id [Integer] Template unique identifier
    # @param data [Data] Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Document name, returned in the meta data.
    # @option opts [String] :format Document format. The zip option will return a ZIP file with PDF files. (default to 'pdf')
    # @option opts [String] :output Response format. (default to 'base64')
    # @return [InlineResponse2004]
    def merge_template(template_id, data, opts = {})
      data, _status_code, _headers = merge_template_with_http_info(template_id, data, opts)
      data
    end

    # Merge template
    # Merges template with data and returns base64 encoded document or a public URL to a document. You can send json encoded data in request body or a public URL to your json file as the data parameter.
    # @param template_id [Integer] Template unique identifier
    # @param data [Data] Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Document name, returned in the meta data.
    # @option opts [String] :format Document format. The zip option will return a ZIP file with PDF files.
    # @option opts [String] :output Response format.
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def merge_template_with_http_info(template_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.merge_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.merge_template"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling TemplatesApi.merge_template"
      end
      allowable_values = ["pdf", "html", "zip", "xlsx"]
      if @api_client.config.client_side_validation && opts[:'format'] && !allowable_values.include?(opts[:'format'])
        fail ArgumentError, "invalid value for \"format\", must be one of #{allowable_values}"
      end
      allowable_values = ["base64", "url", "I"]
      if @api_client.config.client_side_validation && opts[:'output'] && !allowable_values.include?(opts[:'output'])
        fail ArgumentError, "invalid value for \"output\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/templates/{templateId}/output'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'output'] = opts[:'output'] if !opts[:'output'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2004' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#merge_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge multiple templates
    # Allows to merge multiples template with data and returns base64 encoded document or public url to a document.
    # @param request_body [Array<Object>] Data used to specify templates and data objects which are used to merge the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Document name, returned in the meta data.
    # @option opts [String] :format Document format. The zip option will return a ZIP file with PDF files. (default to 'pdf')
    # @option opts [String] :output Response format. (default to 'base64')
    # @return [InlineResponse2004]
    def merge_templates(request_body, opts = {})
      data, _status_code, _headers = merge_templates_with_http_info(request_body, opts)
      data
    end

    # Merge multiple templates
    # Allows to merge multiples template with data and returns base64 encoded document or public url to a document.
    # @param request_body [Array<Object>] Data used to specify templates and data objects which are used to merge the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Document name, returned in the meta data.
    # @option opts [String] :format Document format. The zip option will return a ZIP file with PDF files.
    # @option opts [String] :output Response format.
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def merge_templates_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.merge_templates ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling TemplatesApi.merge_templates"
      end
      allowable_values = ["pdf", "html", "zip", "xlsx"]
      if @api_client.config.client_side_validation && opts[:'format'] && !allowable_values.include?(opts[:'format'])
        fail ArgumentError, "invalid value for \"format\", must be one of #{allowable_values}"
      end
      allowable_values = ["base64", "url", "I"]
      if @api_client.config.client_side_validation && opts[:'output'] && !allowable_values.include?(opts[:'output'])
        fail ArgumentError, "invalid value for \"output\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/templates/output'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'output'] = opts[:'output'] if !opts[:'output'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(request_body) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2004' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#merge_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update template
    # Updates template configuration. The template configuration for pages and layout must be complete as the entire configuration is replaced and not merged.
    # @param template_id [Integer] Template unique identifier
    # @param template_definition_new [TemplateDefinitionNew] Template configuration as JSON string
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def update_template(template_id, template_definition_new, opts = {})
      data, _status_code, _headers = update_template_with_http_info(template_id, template_definition_new, opts)
      data
    end

    # Update template
    # Updates template configuration. The template configuration for pages and layout must be complete as the entire configuration is replaced and not merged.
    # @param template_id [Integer] Template unique identifier
    # @param template_definition_new [TemplateDefinitionNew] Template configuration as JSON string
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def update_template_with_http_info(template_id, template_definition_new, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.update_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.update_template"
      end
      # verify the required parameter 'template_definition_new' is set
      if @api_client.config.client_side_validation && template_definition_new.nil?
        fail ArgumentError, "Missing the required parameter 'template_definition_new' when calling TemplatesApi.update_template"
      end
      # resource path
      local_var_path = '/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(template_definition_new) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2001' 

      # auth_names
      auth_names = opts[:auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#update_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

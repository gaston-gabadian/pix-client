=begin
#API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0-SNAPSHOT

=end

require 'cgi'

module BancardPixServiceClient
  class CommerceBranchUsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Obtain commerce branch users report
    # @param commerce_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id 
    # @option opts [Integer] :commerce_branch_id 
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @return [CommerceBranchUsersReport]
    def commerce_branch_users_report(commerce_id, opts = {})
      data, _status_code, _headers = commerce_branch_users_report_with_http_info(commerce_id, opts)
      data
    end

    # Obtain commerce branch users report
    # @param commerce_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id 
    # @option opts [Integer] :commerce_branch_id 
    # @option opts [Integer] :page 
    # @option opts [Integer] :per_page 
    # @return [Array<(CommerceBranchUsersReport, Integer, Hash)>] CommerceBranchUsersReport data, response status code and response headers
    def commerce_branch_users_report_with_http_info(commerce_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommerceBranchUsersApi.commerce_branch_users_report ...'
      end
      # verify the required parameter 'commerce_id' is set
      if @api_client.config.client_side_validation && commerce_id.nil?
        fail ArgumentError, "Missing the required parameter 'commerce_id' when calling CommerceBranchUsersApi.commerce_branch_users_report"
      end
      # resource path
      local_var_path = '/pix/api/commerce_branch_users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'commerce_id'] = commerce_id
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'commerce_branch_id'] = opts[:'commerce_branch_id'] if !opts[:'commerce_branch_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CommerceBranchUsersReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CommerceBranchUsersApi.commerce_branch_users_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommerceBranchUsersApi#commerce_branch_users_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create commerce branch user
    # @param [Hash] opts the optional parameters
    # @option opts [CommerceBranchUserCreateRequest] :commerce_branch_user_create_request 
    # @return [ShowCommerceBranchUser]
    def create_commerce_branch_user(opts = {})
      data, _status_code, _headers = create_commerce_branch_user_with_http_info(opts)
      data
    end

    # Create commerce branch user
    # @param [Hash] opts the optional parameters
    # @option opts [CommerceBranchUserCreateRequest] :commerce_branch_user_create_request 
    # @return [Array<(ShowCommerceBranchUser, Integer, Hash)>] ShowCommerceBranchUser data, response status code and response headers
    def create_commerce_branch_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommerceBranchUsersApi.create_commerce_branch_user ...'
      end
      # resource path
      local_var_path = '/pix/api/commerce_branch_users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'commerce_branch_user_create_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ShowCommerceBranchUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CommerceBranchUsersApi.create_commerce_branch_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommerceBranchUsersApi#create_commerce_branch_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Destroy commerce branch user
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def destroy_commerce_branch_user(id, opts = {})
      destroy_commerce_branch_user_with_http_info(id, opts)
      nil
    end

    # Destroy commerce branch user
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def destroy_commerce_branch_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommerceBranchUsersApi.destroy_commerce_branch_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommerceBranchUsersApi.destroy_commerce_branch_user"
      end
      # resource path
      local_var_path = '/pix/api/commerce_branch_users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"CommerceBranchUsersApi.destroy_commerce_branch_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommerceBranchUsersApi#destroy_commerce_branch_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

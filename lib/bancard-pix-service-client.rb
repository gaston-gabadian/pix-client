=begin
#API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0-SNAPSHOT

=end

# Common files
require 'bancard-pix-service-client/api_client'
require 'bancard-pix-service-client/api_error'
require 'bancard-pix-service-client/version'
require 'bancard-pix-service-client/configuration'

# Models
require 'bancard-pix-service-client/models/application'
require 'bancard-pix-service-client/models/application_create_request'
require 'bancard-pix-service-client/models/application_create_request_application'
require 'bancard-pix-service-client/models/application_update_request'
require 'bancard-pix-service-client/models/application_update_request_application'
require 'bancard-pix-service-client/models/error_response'
require 'bancard-pix-service-client/models/error_response_messages_inner'
require 'bancard-pix-service-client/models/list_applications'
require 'bancard-pix-service-client/models/payment_hook'
require 'bancard-pix-service-client/models/payment_hook_create_request'
require 'bancard-pix-service-client/models/payment_hook_create_request_payment_hook'
require 'bancard-pix-service-client/models/show_application'
require 'bancard-pix-service-client/models/show_payment_hook'

# APIs
require 'bancard-pix-service-client/api/applications_api'
require 'bancard-pix-service-client/api/payment_hooks_api'

module BancardPixServiceClient
  class << self
    # Customize default settings for the SDK using block.
    #   BancardPixServiceClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
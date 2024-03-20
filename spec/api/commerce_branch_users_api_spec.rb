=begin
#API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for BancardPixServiceClient::CommerceBranchUsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommerceBranchUsersApi' do
  before do
    # run before each test
    @api_instance = BancardPixServiceClient::CommerceBranchUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommerceBranchUsersApi' do
    it 'should create an instance of CommerceBranchUsersApi' do
      expect(@api_instance).to be_instance_of(BancardPixServiceClient::CommerceBranchUsersApi)
    end
  end

  # unit tests for commerce_branch_users_report
  # Obtain commerce branch users report
  # @param commerce_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id 
  # @option opts [Integer] :commerce_branch_id 
  # @option opts [Integer] :page 
  # @option opts [Integer] :per_page 
  # @return [CommerceBranchUsersReport]
  describe 'commerce_branch_users_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_commerce_branch_user
  # Create commerce branch user
  # @param [Hash] opts the optional parameters
  # @option opts [CommerceBranchUserCreateRequest] :commerce_branch_user_create_request 
  # @return [ShowCommerceBranchUser]
  describe 'create_commerce_branch_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for destroy_commerce_branch_user
  # Destroy commerce branch user
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'destroy_commerce_branch_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

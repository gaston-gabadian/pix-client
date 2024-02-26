=begin
#API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0-SNAPSHOT

=end

require 'date'
require 'time'

module BancardPixServiceClient
  class PaymentHookCreateRequestPaymentHook
    attr_accessor :usd_amount_cents

    attr_accessor :buyer_cpf

    attr_accessor :buyer_email

    attr_accessor :buyer_cellphone

    attr_accessor :cashier_user_id

    attr_accessor :commerce_id

    attr_accessor :commerce_branch_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'usd_amount_cents' => :'usd_amount_cents',
        :'buyer_cpf' => :'buyer_cpf',
        :'buyer_email' => :'buyer_email',
        :'buyer_cellphone' => :'buyer_cellphone',
        :'cashier_user_id' => :'cashier_user_id',
        :'commerce_id' => :'commerce_id',
        :'commerce_branch_id' => :'commerce_branch_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'usd_amount_cents' => :'Integer',
        :'buyer_cpf' => :'String',
        :'buyer_email' => :'String',
        :'buyer_cellphone' => :'String',
        :'cashier_user_id' => :'Integer',
        :'commerce_id' => :'Integer',
        :'commerce_branch_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BancardPixServiceClient::PaymentHookCreateRequestPaymentHook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BancardPixServiceClient::PaymentHookCreateRequestPaymentHook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'usd_amount_cents')
        self.usd_amount_cents = attributes[:'usd_amount_cents']
      else
        self.usd_amount_cents = nil
      end

      if attributes.key?(:'buyer_cpf')
        self.buyer_cpf = attributes[:'buyer_cpf']
      else
        self.buyer_cpf = nil
      end

      if attributes.key?(:'buyer_email')
        self.buyer_email = attributes[:'buyer_email']
      else
        self.buyer_email = nil
      end

      if attributes.key?(:'buyer_cellphone')
        self.buyer_cellphone = attributes[:'buyer_cellphone']
      else
        self.buyer_cellphone = nil
      end

      if attributes.key?(:'cashier_user_id')
        self.cashier_user_id = attributes[:'cashier_user_id']
      else
        self.cashier_user_id = nil
      end

      if attributes.key?(:'commerce_id')
        self.commerce_id = attributes[:'commerce_id']
      else
        self.commerce_id = nil
      end

      if attributes.key?(:'commerce_branch_id')
        self.commerce_branch_id = attributes[:'commerce_branch_id']
      else
        self.commerce_branch_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @usd_amount_cents.nil?
        invalid_properties.push('invalid value for "usd_amount_cents", usd_amount_cents cannot be nil.')
      end

      if @buyer_cpf.nil?
        invalid_properties.push('invalid value for "buyer_cpf", buyer_cpf cannot be nil.')
      end

      if @buyer_email.nil?
        invalid_properties.push('invalid value for "buyer_email", buyer_email cannot be nil.')
      end

      if @buyer_cellphone.nil?
        invalid_properties.push('invalid value for "buyer_cellphone", buyer_cellphone cannot be nil.')
      end

      if @cashier_user_id.nil?
        invalid_properties.push('invalid value for "cashier_user_id", cashier_user_id cannot be nil.')
      end

      if @commerce_id.nil?
        invalid_properties.push('invalid value for "commerce_id", commerce_id cannot be nil.')
      end

      if @commerce_branch_id.nil?
        invalid_properties.push('invalid value for "commerce_branch_id", commerce_branch_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @usd_amount_cents.nil?
      return false if @buyer_cpf.nil?
      return false if @buyer_email.nil?
      return false if @buyer_cellphone.nil?
      return false if @cashier_user_id.nil?
      return false if @commerce_id.nil?
      return false if @commerce_branch_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          usd_amount_cents == o.usd_amount_cents &&
          buyer_cpf == o.buyer_cpf &&
          buyer_email == o.buyer_email &&
          buyer_cellphone == o.buyer_cellphone &&
          cashier_user_id == o.cashier_user_id &&
          commerce_id == o.commerce_id &&
          commerce_branch_id == o.commerce_branch_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [usd_amount_cents, buyer_cpf, buyer_email, buyer_cellphone, cashier_user_id, commerce_id, commerce_branch_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = BancardPixServiceClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

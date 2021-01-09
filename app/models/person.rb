class Person 
    include ActiveModel::AttributeMethods
    include ActiveModel::Conversion
    include ActiveModel::Dirty
    include ActiveModel::Validations

    attribute_method_prefix 'reset_'
    attribute_method_suffix '_highest?'
    define_attribute_methods 'age'

    define_attribute_methods :first_name, :last_name

    attr_accessor :name, :age, :email, :token

    # validates :name, presence: true
    validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
    validates! :token, presence: true


    private
        def reset_attribute(attribute)
            send("#{attribute}=", 0)
        end
        def attribute_highest?(attribute)
            send(attribute) > 100
        end

    public
        def persisted?
            false
        end
        def id
            nil
        end
    
        def first_name
            @first_name
        end
  
        def first_name= (value)
            first_name_will_change!
            @first_name = value
        end
  
        def last_name
            @last_name
        end
  
        def last_name= (value)
            last_name_will_change!
            @last_name = value
        end
  
        def save
            # do save work...
            changes_applied
        end
end

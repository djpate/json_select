module JSONSelect::TypeHelpers
  
  def instance_of_type(object, test, key, idx, size, depth)
    test[:n] == type_of(object)
  end

private

  def type_of(object)
    if object.respond_to?(:json_select_each)
      return 'object'
    end
    
    case object
    when Hash       then 'object'
    when Array      then 'array'
    when String     then 'string'
    when Symbol     then 'string'
    when Numeric    then 'number'
    when TrueClass  then 'boolean'
    when FalseClass then 'boolean'
    when NilClass   then 'null'
    else raise "Invalid object of class #{object.class} for JSONSelect: #{object.inspect}"
    end
  end
  
end

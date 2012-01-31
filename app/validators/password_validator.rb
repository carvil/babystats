class PasswordValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    record.errors[attribute] << 'can\'t contain name or email' if ([ record.name, record.email ].include?(value) and !value.empty?)
    record.errors[attribute] << 'length must be greater than 6 characters or digits' if value.to_s.size < 6
  end

end


class PasswordValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)  
    record.errors[attribute] << 'can''t equal name, username, or email' if [ record.name, record.username, record.email ].include?(value)
  end 

end


class Doctor < ActiveRecord::Base

    has_secure_password
    #adds to salt to our passwords--add some random string to your password for security
end
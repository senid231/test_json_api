module Client

  class Base < JsonApiClient::Resource
    self.site = 'http://127.0.0.1:3000/'
  end


  class Contact < Base
    has_many :phone_numbers
  end


  class PhoneNumber < Base
    belongs_to :contact
  end


end

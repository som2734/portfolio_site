class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  attribute :content, :validate => true
  attribute :nickname, :captcha => true #hidden field to prevent spam, spam bot will automatically fill it out and this will let us know it is spam
  def headers
    {
      :subject => "Contact Form",
      :to => "smashevich@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

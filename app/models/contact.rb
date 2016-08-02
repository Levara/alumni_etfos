class Contact < MailForm::Base

attribute :name, 		:validate => true
attribute :email, 		:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i 
attribute :message, 	:validate => true

#hidden field to prevent spam
attribute :nickname, 	:captcha => true


def headers 
{
	:subject => "Contact Form",
	:to => "monika.civic@hotmail.com",
	:from => %("#{name}" <#{email}>)
}
end


end
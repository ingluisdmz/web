class ContactSite < ActiveRecord::Base
	attr_accessible 	:first_name,
					:last_name,
					:email,
					:company_name,
					:phone_number,
					:type_contact_id,
					:message,
					:active
end

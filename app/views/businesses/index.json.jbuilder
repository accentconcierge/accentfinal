json.array!(@businesses) do |business|
  json.extract! business, :id, :companyname, :telephone, :email, :website, :address, :active, :rating
  json.url business_url(business, format: :json)
end

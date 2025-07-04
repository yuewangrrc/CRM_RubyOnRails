# Create 5 sample customers
customers_data = [
  {
    full_name: "John Smith",
    phone_number: "555-0123",
    email_address: "john.smith@email.com",
    notes: "Great customer, always pays on time. Prefers email communication."
  },
  {
    full_name: "Sarah Johnson",
    phone_number: "555-0456",
    email_address: "", # Missing email
    notes: "New customer, interested in premium services. Follow up needed."
  },
  {
    full_name: "Michael Brown",
    phone_number: "555-0789",
    email_address: "mike.brown@company.com",
    notes: "Corporate account manager. Handles bulk orders."
  },
  {
    full_name: "Emily Davis",
    phone_number: "555-0321",
    email_address: "", # Missing email
    notes: "VIP customer. Prefers phone contact over email."
  },
  {
    full_name: "Robert Wilson",
    phone_number: "555-0654",
    email_address: "rob.wilson@email.com",
    notes: "Regular customer for 3 years. Very satisfied with services."
  }
]

customers_data.each do |customer_data|
  Customer.create!(customer_data)
  puts "Created customer: #{customer_data[:full_name]}"
end

puts "All customers created successfully!"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

AdminUser.find_or_create_by!(email: 'hardhillon2013@gmail.com') do |admin|
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
  
  Customer.find_or_create_by!(full_name: "Samarjot Singh") do |customer|
    customer.phone_number = "204-295-5932"
    customer.email = "samarjotsingh19@gmail.com"
    customer.notes = "New customer."
  end
  
  Customer.find_or_create_by!(full_name: "Samanpreet Kaur") do |customer|
    customer.phone_number = "987-654-3210"
    customer.email = nil  # Not provided
    customer.notes = "Returning customer."
  end
  
  Customer.find_or_create_by!(full_name: "Harshdeep Devgan") do |customer|
    customer.phone_number = "555-555-5555"
    customer.email = "harshdeep@gmail.com"
    customer.notes = "High-priority customer."
  end
  
  Customer.find_or_create_by!(full_name: "Arshpreet Singh") do |customer|
    customer.phone_number = "666-666-6666"
    customer.email = "arshpreet@gmail.com"
    customer.notes = "Referred by another client."
  end
  
  Customer.find_or_create_by!(full_name: "Karman Sandhu") do |customer|
    customer.phone_number = "777-777-7777"
    customer.email = nil  # Not provided
    customer.notes = "Follow-up needed."
  end
  
  Customer.find_or_create_by!(full_name: "Jaskarn Singh") do |customer|
    customer.phone_number = "888-888-8888"
    customer.email = "jaskarn@gmail.com"
    customer.notes = "Potential new deal."
  end
  
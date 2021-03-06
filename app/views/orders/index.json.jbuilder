json.array!(@orders) do |order|
  json.extract! order, :id, :date_recieved, :sale, :trustee_company_id, :trustee_sale_file_number, :high_liability, :apn_number, :address, :state, :city, :county, :zip_code, :post_by_date, :newspaper_id, :notice_sent, :confirmation_recieved, :proof_recieved, :publishing_instructions, :publishing_date_one, :publishing_date_two, :publishing_date_three, :publishing_date_four, :sale_date, :location_id, :custom_sale_location, :trustor, :opening_bid, :sold_amount, :sale_information_notes, :notice_of_sale_amount, :shipment_track_number, :shipped_to, :back_office_note, :file2_note, :sale_note, :file2_order_confirmed, :agent_paid, :order_active
  json.url order_url(order, format: :json)
end

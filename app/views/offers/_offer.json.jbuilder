json.extract! offer, :id, :name, :url, :company_id, :job_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)
json.extract! requisition, :id, :reasonReq, :responsible_id, :created_at, :updated_at
json.url requisition_url(requisition, format: :json)

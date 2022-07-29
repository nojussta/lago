LAGO_URL="http://0.0.0.0:3000"
API_KEY="877a338f-4e15-4907-b4e3-990232125fe5"

curl --location --request POST "$LAGO_URL/api/v1/applied_add_ons" \
  --header "Authorization: Bearer $API_KEY" \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "applied_add_on": {
      "customer_id": "666",
      "add_on_code": "backup",
      "amount_currency": "USD"
    }
  }'

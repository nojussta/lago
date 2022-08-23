export DATA=$(du -sh . | numfmt --from=auto | tr -d ' .')
#export DATA= $(du -s | tr '.' ' ')
# "data-used": "'"$DATA"'"

LAGO_URL="http://0.0.0.0:3000"
API_KEY="42349bf1-e6b3-4e29-8cb1-ac33590b04d3"

curl --location --request POST "$LAGO_URL/api/v1/events" \
    --header "Authorization: Bearer $API_KEY" \
    --header 'Content-Type: application/json' \
    --data-raw '{
  "event": {
    "transaction_id": "tr-id-001",
    "customer_id": "mantasM",
    "code": "dusage",
    "timestamp": 1650893379,
    "properties": {
      "data-used": "'"$DATA"'"
    }
  }
}'

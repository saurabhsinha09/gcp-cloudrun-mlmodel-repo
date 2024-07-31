# docker build -t xgboost_coupon_model .
# docker tag xgboost_coupon_model us-central1-docker.pkg.dev/dcn-aiml/ml-models/xgboost_coupon_model
# docker push us-central1-docker.pkg.dev/dcn-aiml/ml-models/xgboost_coupon_model

# gcloud run deploy xgboost-coupon-model --image  us-central1-docker.pkg.dev/dcn-aiml/ml-models/xgboost_coupon_model --region us-central1

curl -X POST https://<CloudRunEndPoint>/predict \
-H "Content-Type: application/json" \
-d '{
     "destination": "No Urgent Place",
     "passanger": "Kid(s)",
     "weather": "Sunny",
     "temperature": 80,
     "time": "10AM",
     "coupon": "Bar",
     "expiration": "1d",
     "gender": "Female",
     "age": "21",
     "maritalStatus": "Unmarried partner",
     "has_children": 1,
     "education": "Some college - no degree",
     "occupation": "Unemployed",
     "income": "$37500 - $49999",
     "Bar": "never",
     "CoffeeHouse": "never",
     "CarryAway": "4~8",
     "RestaurantLessThan20": "4~8",
     "Restaurant20To50": "1~3",
     "toCoupon_GEQ15min": 1,
     "toCoupon_GEQ25min": 0,
     "direction_same": 0
}'



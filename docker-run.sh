docker run -d \
    --name twitter2kafka \
    --ip 172.18.0.5 \
    --net bigdata \
    --env KAFKA_BOOTSTRAP_SERVERS="172.17.0.4:9092" \
    --env KAFKA_TOPIC="tweets" \
    --env TWITTER_HASHTAG="#GameOfThrones" \
    --env TWITTER_CONSUMER_KEY=$TWITTER_CONSUMER_KEY \
    --env TWITTER_CONSUMER_SECRET=$TWITTER_CONSUMER_SECRET \
    --env TWITTER_ACCESS_TOKEN=$TWITTER_ACCESS_TOKEN \
    --env TWITTER_ACCESS_TOKEN_SECRET=$TWITTER_ACCESS_TOKEN_SECRET \
    infobarbosa/twitter2kafka:1.0-SNAPSHOT

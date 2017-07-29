docker run -d \
	-e "KAFKA_BOOTSTRAP_SERVERS=172.17.0.3:9092" \
	-e "TWITTER_HASHTAG=\#GameOfThrones" \
	-e "KAFKA_TOPIC=tweets" \
	infobarbosa/twitter2kafka:1.0-SNAPSHOT

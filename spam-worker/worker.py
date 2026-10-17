import json, os
from kafka import KafkaConsumer
consumer=KafkaConsumer("listing.created",bootstrap_servers=os.getenv("KAFKA_BOOTSTRAP","localhost:9092"),value_deserializer=lambda x:json.loads(x.decode()),auto_offset_reset="earliest",group_id="spam-detector")
print("spam worker listening")
for msg in consumer:
 p=msg.value; text=(p.get("title","")+" "+p.get("description","")).lower(); flags=["free money","click here","urgent","winner","guaranteed"]; score=min(1.0,sum(x in text for x in flags)/2); print({"listing_id":p.get("id"),"spam_score":score})

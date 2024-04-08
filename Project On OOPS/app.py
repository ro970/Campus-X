import nlpcloud

client = nlpcloud.Client("finetuned-gpt-neox-20b", "2b58d7fb9af09e617ee525e78c7766b6d8c5bb61", gpu=True, lang="en")
client.entities("""John Doe started learning Javascript when he was 15 years old. After a couple of years he switched to Python and starter learning low level programming. He is now a Go expert at Google.""", searched_entity="programming languages")

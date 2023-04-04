tellraw @a[advancements={nincodedo:unique_items/rumors=false}] [{"text":"["},{"text":"Wandering Trader","color":"blue"},{"text":"] Hello there! I have many rare treasures in my shop today! The most interesting to you may be "},{"text":"this map.", "italic":true},{"text":" It points to an ancient structure said to hold a powerful item from ages long forgotten... No refunds if you get lost or die on the way there."}]
title @a[advancements={nincodedo:unique_items/rumors=false}] times 20 400 20
title @a[advancements={nincodedo:unique_items/rumors=false}] actionbar [{"text":"Check your Advancements for more info.","italic":true}]
advancement grant @a until nincodedo:unique_items/rumors

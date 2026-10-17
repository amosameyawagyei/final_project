What did you ask the AI to do?
I asked AI to help me explain the process of creating the seven RESTful actions in my Rails app, then to help me choose and build a Phase 2 enhancement. I picked Option C.

What did it do well?
It compared the three options by difficulty and helped me pick one that fit my FoodScan resource. It explained the full path of the search value.

What did it get wrong, or what did you have to fix?
Its first code used the wrong names (`FoodItem` and a `name` column) because it didn't know my resource was FoodScan.

What did you learn from the AI suggestions?
I learned that a GET form puts the search into the URL, which `params` then reads, so the form, controller, and query are connected through one key (`q`). 

### parse json file
```
./json_parser.sh file name.json
```

### parse curl response 
```
./json_parser.sh curl https://api.github.com/users/octocat
```

### get data from json
```
» jq '.name' name.json
"daria"
```
```
» cat name.json | jq '.name'
"daria"
```
```
» cat name.json | jq '.["name"]'
"daria"
```

### get multi data ( use comma )
```
» curl -s https://api.github.com/users/octocat | jq '.login, .created_at'
"octocat"
"2011-01-25T18:44:36Z"
```

### get inner object data
```
» echo '{ "user": { "name":"apeach", "age":3 } }' | jq '.'
{
  "user": {
    "name": "apeach",
    "age": 3
  }
}
» echo '{ "user": { "name":"apeach", "age":3 } }' | jq '.user.name'
"apeach"
------------------------------------------------------------
» echo '{ "user": { "name":"apeach", "age":3 } }' | jq '.user.age'
3
```
### get inner object data with pipeline
`-c` option is compact data ( print one line ) 
```
» echo '{ "user": { "name":"apeach", "age":3 } }' | jq -c '.user|.name'
"apeach"
```

[reference] https://www.44bits.io/ko/post/cli_json_processor_jq_basic_syntax


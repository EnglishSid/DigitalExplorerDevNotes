|#|Description
|---|---|
|1|new business trend added (one or more industry links included)
|2|existing business trend : name changed (or any other single property) 
|3|existing business trend : 2 or more properties changed (e.g. name and description)
|4|existing business trend : industry link changed (description)
|5|existing business trend : industry link changed (lifecycle stage)
|6|existing business trend : NEW industry link added
|7|existing business trend : remove an industry link 
|8|Test trend deleted


All should follow these basic steps

- create or edited
- shown in pending
- approval shows only changed properties
- approved
- updates shown in main UI

###Status

|build id|UC1|UC2|UC3|UC4|UC5|UC6|UC7|UC8|
|---|---|---|---|---|---|---|---|---|
|dev1.4.5|:white_check_mark:|:x:all properties presented as changed|:x:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x: errors in the UI ("no changes made")|:x: blank page presented for reviewer
|dev1.5.2|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|
|itg.1.1.2|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|:white_check_mark:|



:white_check_mark:
:x:

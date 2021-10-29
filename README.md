# DOCUMENTATION

The information above should to the filter and generate the stream data.

- Home page *Requirements*
  - Form with
    - column numbers type:text
    - the columns are (seven): Name, Birthday, Address, Mother, Job, Language, PhoneNumber
    - Xls type:file
  - Button to submit
    - All the fields are required
    - The input **column numbers** must have numbers separated by comma, example: 0,1,4,7
    - When the user clicks to filter and stream data, the *Xls file* will be submitted, and the columns informed in *column numbers* will be extracted and streamed

# Setup

Just run

```
rails db:drop db:create db:migrate db:seed
```

With this command, the database will be generated and; a file in lib/book.xls too with 2000 lines of the example.

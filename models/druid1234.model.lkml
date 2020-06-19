connection: "druid"

# include all the views
include: "/views/**/*.view"

datagroup: druid1234_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: druid1234_default_datagroup

explore: my_test_data {}

explore: my_test_data_2 {}

explore: wikipedia {}

explore: prod_session_v2 {}

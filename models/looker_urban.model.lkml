connection: "looker_urbanbq"

# include all the views
include: "/views/**/*.view"

datagroup: looker_urban_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_urban_default_datagroup

explore: connection_reg_r3 {}

explore: plan {}

explore: sales_predict {}

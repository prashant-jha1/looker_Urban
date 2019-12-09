view: sales_predict {
  sql_table_name: Looker.Sales_Predict ;;

  dimension_group: month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Month ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.Sales ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

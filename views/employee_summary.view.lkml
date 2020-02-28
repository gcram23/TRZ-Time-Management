view: employee_summary {
  sql_table_name: "PUBLIC"."EMPLOYEE_SUMMARY"
    ;;

  dimension: employee_name {
    type: string
    sql: ${TABLE}."Employee Name" ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}."Employee Number" ;;
  }

  dimension: employee_type {
    type: string
    sql: ${TABLE}."Employee Type" ;;
  }

  dimension: expenditure_type {
    type: string
    sql: ${TABLE}."Expenditure Type" ;;
  }

  dimension_group: hire {
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
    sql: ${TABLE}."Hire Date" ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}."HOURS" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."Project Name" ;;
  }

  dimension: project_number {
    type: string
    sql: ${TABLE}."Project Number" ;;
  }

  dimension_group: termination {
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
    sql: ${TABLE}."Termination Date" ;;
  }

  dimension: timecard_status {
    type: string
    sql: ${TABLE}."Timecard Status" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, employee_name]
  }
}

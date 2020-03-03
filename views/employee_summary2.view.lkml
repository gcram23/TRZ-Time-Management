view: employee_summary2 {
  sql_table_name: "PUBLIC"."EMPLOYEE_SUMMARY2"
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

  dimension: hire_date {
    type: string
    sql: ${TABLE}."Hire Date" ;;
  }

  dimension: hours {
    type: number
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

  dimension: termination_date {
    type: string
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

  dimension: Project_Name {
    sql: ${TABLE}."Project Name" ;;
    drill_fields: [employee_type]
  }

  measure: count {
    type: count
    drill_fields: [employee_name, project_name]
  }

  measure: hours1 {
    type: sum
    sql: ${TABLE}."HOURS" ;;
  }

  measure: employee_number1 {
    type: count_distinct
    sql: ${TABLE}."Employee Number" ;;
  }

  measure: drill_count {
    type: count
    drill_fields: [employee_name, project_name]
  }
}

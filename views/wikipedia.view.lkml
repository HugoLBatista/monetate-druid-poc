view: wikipedia {
  sql_table_name: druid.wikipedia ;;

  dimension_group: _ {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."__time" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."cityName" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}."count" ;;
  }

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}."countryIsoCode" ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}."countryName" ;;
  }

  dimension: diff_url {
    type: string
    sql: ${TABLE}."diffUrl" ;;
  }

  dimension: flags {
    type: string
    sql: ${TABLE}."flags" ;;
  }

  dimension: is_anonymous {
    type: string
    sql: ${TABLE}."isAnonymous" ;;
  }

  dimension: is_minor {
    type: string
    sql: ${TABLE}."isMinor" ;;
  }

  dimension: is_new {
    type: string
    sql: ${TABLE}."isNew" ;;
  }

  dimension: is_robot {
    type: string
    sql: ${TABLE}."isRobot" ;;
  }

  dimension: is_unpatrolled {
    type: string
    sql: ${TABLE}."isUnpatrolled" ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}."namespace" ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}."page" ;;
  }

  dimension: region_iso_code {
    type: string
    sql: ${TABLE}."regionIsoCode" ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}."regionName" ;;
  }

  dimension: sum_added {
    type: number
    sql: ${TABLE}."sum_added" ;;
  }

  dimension: sum_comment_length {
    type: number
    sql: ${TABLE}."sum_commentLength" ;;
  }

  dimension: sum_deleted {
    type: number
    sql: ${TABLE}."sum_deleted" ;;
  }

  dimension: sum_delta {
    type: number
    sql: ${TABLE}."sum_delta" ;;
  }

  dimension: sum_delta_bucket {
    type: number
    sql: ${TABLE}."sum_deltaBucket" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  measure: countmeasure {
    type: count
    drill_fields: [city_name, country_name, region_name]
  }
}

view: my_test_data {
  sql_table_name: druid.my_test_data ;;

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

  dimension: account_id {
    type: string
    sql: ${TABLE}."account_id" ;;
  }

  dimension: brands_purchased {
    type: string
    sql: ${TABLE}."brands_purchased" ;;
  }

  dimension: brands_viewed {
    type: string
    sql: ${TABLE}."brands_viewed" ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}."browser" ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}."browser_version" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: city_region_country_code {
    type: string
    sql: ${TABLE}."city_region_country_code" ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}."count" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."country_code" ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}."device_type" ;;
  }

  dimension: has_cart {
    type: string
    sql: ${TABLE}."has_cart" ;;
  }

  dimension: has_new_customer {
    type: string
    sql: ${TABLE}."has_new_customer" ;;
  }

  dimension: has_product_view {
    type: string
    sql: ${TABLE}."has_product_view" ;;
  }

  dimension: has_purchase {
    type: string
    sql: ${TABLE}."has_purchase" ;;
  }

  dimension: has_recommendation_cart {
    type: string
    sql: ${TABLE}."has_recommendation_cart" ;;
  }

  dimension: has_recommendation_click {
    type: string
    sql: ${TABLE}."has_recommendation_click" ;;
  }

  dimension: has_recommendation_impression {
    type: string
    sql: ${TABLE}."has_recommendation_impression" ;;
  }

  dimension: has_recommendation_purchase {
    type: string
    sql: ${TABLE}."has_recommendation_purchase" ;;
  }

  dimension: has_stealth {
    type: string
    sql: ${TABLE}."has_stealth" ;;
  }

  dimension: is_bounce {
    type: string
    sql: ${TABLE}."is_bounce" ;;
  }

  dimension: offers {
    type: string
    sql: ${TABLE}."offers" ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}."os" ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}."os_version" ;;
  }

  dimension: page_event_ids {
    type: string
    sql: ${TABLE}."page_event_ids" ;;
  }

  dimension: page_views {
    type: number
    sql: ${TABLE}."page_views" ;;
  }

  dimension: page_views_ss {
    type: number
    sql: ${TABLE}."page_views_ss" ;;
  }

  dimension: product_types_purchased {
    type: string
    sql: ${TABLE}."product_types_purchased" ;;
  }

  dimension: product_types_viewed {
    type: string
    sql: ${TABLE}."product_types_viewed" ;;
  }

  dimension: product_view_count {
    type: number
    sql: ${TABLE}."product_view_count" ;;
  }

  dimension: purchase_count {
    type: number
    sql: ${TABLE}."purchase_count" ;;
  }

  dimension: purchase_value_ss {
    type: number
    sql: ${TABLE}."purchase_value_ss" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: screen_height {
    type: string
    sql: ${TABLE}."screen_height" ;;
  }

  dimension: screen_width {
    type: string
    sql: ${TABLE}."screen_width" ;;
  }

  dimension: session_count {
    type: number
    sql: ${TABLE}."session_count" ;;
  }

  dimension: session_value {
    type: number
    sql: ${TABLE}."session_value" ;;
  }

  dimension: session_value_from_recommendations {
    type: number
    sql: ${TABLE}."session_value_from_recommendations" ;;
  }

  dimension: session_value_ss {
    type: number
    sql: ${TABLE}."session_value_ss" ;;
  }

  dimension: time_on_site {
    type: number
    sql: ${TABLE}."time_on_site" ;;
  }

  dimension: time_on_site_ss {
    type: number
    sql: ${TABLE}."time_on_site_ss" ;;
  }

  measure: countmeasure {
    type: count
    drill_fields: []
  }
}

view: prod_session_v2 {
  sql_table_name: druid."prod-session-v2" ;;

    dimension_group: time {
      label: "Time"
      type: time
      timeframes: [
        raw,
        hour,
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


  dimension: country_code {
    type: string
    map_layer_name: countries
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

  dimension: has_cart_string {
    sql: CASE
          WHEN ${TABLE}."has_new_customer" = 't' THEN 'Added to Cart'
          ELSE 'Didnt added to Cart'
          END ;;
  }


  dimension: has_new_customer {
    type: string
    sql: ${TABLE}."has_new_customer" ;;
  }

  dimension: has_new_customer_string {
    sql: CASE
    WHEN ${TABLE}."has_new_customer" = 't' THEN 'New Customer'
    ELSE 'Returning Customer'
    END ;;
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


  dimension: product_types_purchased {
    type: string
    sql: ${TABLE}."product_types_purchased" ;;
  }

  dimension: product_types_viewed {
    type: string
    sql: ${TABLE}."product_types_viewed" ;;
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


  measure: count_sum {
    type: sum
    sql: ${TABLE}."count" ;;
 }

  measure: count {
    type: sum
    sql: ${TABLE}."count" ;;
  }

  measure: product_view_count {
    type: sum
    sql: ${TABLE}."product_view_count" ;;
  }


  measure: page_views {
    type: sum
    link: {
      label: "Drill Look"
      url: "/looks/7?account_id={{ _filters['prod_session_v2.account_id'] | url_encode }}&__time={{ _filters['prod_session_v2.__time']| url_encode }}"

    }
    sql: ${TABLE}."page_views" ;;
  }

  measure: page_views_ss {
    type: sum
    sql: ${TABLE}."page_views_ss" ;;
  }

  measure: page_views_avg {
    type: average
    sql: ${TABLE}."page_views" ;;
  }


  measure: purchase_count {
    type: sum
    link: {
      label: "Drill Look"
      url: "/looks/8?account_id={{ _filters['prod_session_v2.account_id'] | url_encode }}&__time={{ _filters['prod_session_v2.__time']| url_encode }}"

    }
    sql: ${TABLE}."purchase_count" ;;
  }

  measure: purchase_value_ss {
    type: sum
    sql: ${TABLE}."purchase_value_ss" ;;
    value_format: "$0.00"
  }
  measure: session_count {
    type: sum
    sql: ${TABLE}."session_count" ;;
  }

  measure: session_value {
    type: sum
    link: {
      label: "Drill Look"
      url: "/looks/6?account_id={{ _filters['prod_session_v2.account_id'] | url_encode }}&__time={{ _filters['prod_session_v2.__time']| url_encode }}"

    }

    sql: ${TABLE}."session_value" ;;
    value_format: "$0.00"
  }



  measure: session_value_from_recommendations {
    type: sum
    sql: ${TABLE}."session_value_from_recommendations" ;;
    value_format: "$0.00"
  }

  measure: session_value_ss {
    type: sum
    sql: ${TABLE}."session_value_ss" ;;
    value_format: "$0.00"
  }

  measure: time_on_site {
    type: sum
    sql: ${TABLE}."time_on_site" ;;

  }

  measure: time_on_site_ss {
    type: sum
    sql: ${TABLE}."time_on_site_ss" ;;
  }
  measure: time_on_site_avg {
    type: average
    sql: ${TABLE}."time_on_site" ;;
  }
measure: count_clicks {
  type: count
    filters: [has_recommendation_click: "t"]
}
  measure: count_recpurchased {
    type: count
    filters: [has_recommendation_purchase: "t"]
  }
  measure: count_purchases {
    type: count
    filters: [has_purchase: "t"]
  }
  measure: count_has_cart {
    type: count
    filters: [has_cart: "t"]
  }
  measure: count_bounce {
    type: count
    filters: [is_bounce: "t"]
  }


  }

with regions as(
    select * from {{ ref('stg_region_cumulative_cases')}}
),

provinces as (
    select * from {{ ref('stg_province')}}
)


    select  date
            , region_code
            , region_name
            , province_code
            , province_name
            , total_case_province
    from regions
    left join provinces using (region_code)

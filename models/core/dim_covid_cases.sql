with region_new as(
    select * from {{ ref('stg_region_new_cases')}}
),

region_cumulative as (
    select * from {{ ref('stg_region_cumulative_cases')}}
)


    select region_code
            , coalesce(region_cumulative.region_name, region_new.region_name) as region_name
            , new_case
            , icu_case
            , symptomatic_case
            , total_recovered
            , total_deaths
            , total_cases
    from region_new
    left join region_cumulative using (region_code)

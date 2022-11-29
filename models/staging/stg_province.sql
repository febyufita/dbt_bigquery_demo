SELECT date
        , province_code
        , province_name
        , region_code
        , sum(confirmed_cases) as total_case_province
FROM {{ source('italy_covid_cases', 'data_by_province')}}
group by 1,2,3,4

SELECT  region_code
        , region_name
        , sum(recovered) as total_recovered
        , sum(deaths) as total_deaths
        , sum(total_confirmed_cases) as total_cases
FROM {{ source('italy_covid_cases', 'data_by_region')}}
group by 1,2

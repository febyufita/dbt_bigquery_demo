SELECT  region_code
        , region_name
        , sum(new_current_confirmed_cases) as new_case
        , sum(hospitalized_patients_intensive_care) as icu_case
        , sum(hospitalized_patients_symptoms) as symptomatic_case
FROM {{ source('italy_covid_cases', 'data_by_region')}}
group by 1,2

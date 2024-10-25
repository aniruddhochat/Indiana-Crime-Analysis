select distinct offender.offender_id AS 'Offender Id',
case when offender.age_num >= 0 and offender.age_num <=10 then '0-10'
when offender.age_num >= 11 and offender.age_num <=20 then '0-20'
when offender.age_num >= 21 and offender.age_num <=30 then '21-30'
when offender.age_num >= 31 and offender.age_num <=40 then '31-40'
when offender.age_num >= 41 and offender.age_num <=50 then '41-50'
when offender.age_num >= 51 and offender.age_num <=60 then '51-60'
when offender.age_num >= 61 and offender.age_num <=70 then '61-70'
when offender.age_num >= 71 and offender.age_num <=80 then '71-80'
when offender.age_num >= 81 and offender.age_num <=90 then '81-90'
when offender.age_num >= 91 and offender.age_num <=100 then '91-100'
when offender.age_num >= 101 then 'Unknown' end AS 'Offender Age',
case when offender.sex_code = 'X' then 'Unknown'else offender.sex_code end as 'Offender Gender',
incident.incident_id as 'Incident Id', 
incident.data_year as 'Incident Year',
incident.incident_date as 'Incident Date',
incident_hour as 'Incident Hour',
offenseType.offense_name as 'Offense Name',
offenseType.crime_against as 'Crime Against',
offenseType.offense_category_name as 'Offense Category',
locationType.location_name as 'Location Name',
ag.primary_county as 'County',
race.race_desc as 'Offender Race',
ethnicity.ethnicity_name as 'Offender Ethnicity',
vic.victim_id as 'Victim Id',
case when vic.age_num >= 0 and vic.age_num <=10 then '0-10'
when vic.age_num >= 11 and vic.age_num <=20 then '0-20'
when vic.age_num >= 21 and vic.age_num <=30 then '21-30'
when vic.age_num >= 31 and vic.age_num <=40 then '31-40'
when vic.age_num >= 41 and vic.age_num <=50 then '41-50'
when vic.age_num >= 51 and vic.age_num <=60 then '51-60'
when vic.age_num >= 61 and vic.age_num <=70 then '61-70'
when vic.age_num >= 71 and vic.age_num <=80 then '71-80'
when vic.age_num >= 81 and vic.age_num <=90 then '81-90'
when vic.age_num >= 91 and vic.age_num <=100 then '91-100'
when vic.age_num >= 101 then 'Unknown' end AS 'Victim Age',
case when vic.sex_code = 'X' then 'Unknown' else offender.sex_code end as 'Victim Gender',
vicRace.race_desc as 'Victim Race',
vicEthnicity.ethnicity_name as 'Victim Ethnicity',
ISNULL(rel.relationship_name,'No Relationship') as 'Victim - Offender Relationship'
from nibrs_offender offender
join nibrs_incident incident
on  incident.incident_id = offender.incident_id
join nibrs_offense offense
on offense.incident_id = incident.incident_id
join nibrs_offense_type offenseType
on offenseType.offense_type_id = offense.offense_type_id
join nibrs_location_type locationType
on locationType.location_id = offense.location_id
join cde_agencies ag
on ag.agency_id = incident.agency_id
join ref_race race
on race.race_id = offender.race_id
join nibrs_ethnicity ethnicity
on ethnicity.ethnicity_id = offender.ethnicity_id
join nibrs_property property
on property.incident_id = incident.incident_id
left join nibrs_victim vic
on vic.incident_id = incident.incident_id
join nibrs_victim_type vicType
on vicType.victim_type_id = vic.victim_type_id
join ref_race vicRace
on vicRace.race_id = vic.race_id
join nibrs_ethnicity vicEthnicity
on vicEthnicity.ethnicity_id = vic.ethnicity_id
left join nibrs_victim_offender_rel vo
on vo.offender_id = offender.offender_id
and vo.victim_id = vic.victim_id
left join nibrs_relationship rel
on rel.relationship_id = vo.relationship_id
where offender.age_num is not null and offender.age_num < 100
and vic.age_num is not null and vic.age_num < 100


--select * from nibrs_offense
--567142 - 548137 - 523930
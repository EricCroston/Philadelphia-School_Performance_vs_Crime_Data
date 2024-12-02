-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ygUHeZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "School_Info" (
    "school_id" int32   NOT NULL,
    "school_name" varchar   NOT NULL,
    "school_name_label" varchar   NOT NULL,
    "street_address" varchar   NOT NULL,
    "zip_code" varchar   NOT NULL,
    "phone_number" varchar   NOT NULL,
    "grade_level" varchar   NOT NULL,
    "grade_org" varchar   NOT NULL,
    "type" int64   NOT NULL,
    "type_specific" varchar   NOT NULL,
    "geometry" geometry   NOT NULL,
    "district" varchar   NOT NULL,
    "district_psa" varchar   NOT NULL,
    CONSTRAINT "pk_School_Info" PRIMARY KEY (
        "school_id"
     )
);

CREATE TABLE "High_School_Metric_Scores" (
    "year" varchar   NOT NULL,
    "school_id" int64   NOT NULL,
    "school_name" varchar   NOT NULL,
    "report_type" varchar   NOT NULL,
    "admission_type" varchar   NOT NULL,
    "number_students_served_full_year" int64   NOT NULL,
    "october_one_enrollment" int64   NOT NULL,
    "percent_11th_grade_students_proficient_all_three_keystones" float64   NOT NULL,
    "percent_11th_grade_students_below_basic_keystone_algebra_i" float64   NOT NULL,
    "percent_11th_grade_students_proficient_keystone_algebra_i" float64   NOT NULL,
    "percent_11th_grade_students_below_basic_keystone_biology" float64   NOT NULL,
    "percent_11th_grade_students_proficient_keystone_biology" float64   NOT NULL,
    "percent_11th_grade_students_below_basic_keystone_literature" float64   NOT NULL,
    "percent_11th_grade_students_proficient_keystone_literature" float64   NOT NULL,
    "percent_12th_grade_cte_students_meeting_industry_standards" float64   NOT NULL,
    "ninth_grade_on_track_rate" float64   NOT NULL,
    "percent_metrics_improving_all_students" float64   NOT NULL,
    "percent_students_attending_at_least_90_percent" float64   NOT NULL,
    "number_dropouts_grades_7_to_12" int64   NOT NULL,
    "percent_students_receiving_zero_out_of_school_suspensions" float64   NOT NULL,
    "percent_students_completing_the_fafsa_by_end_of_12th_grade" float64   NOT NULL,
    "first_fall_matriculation" float64   NOT NULL,
    "four_year_cohort_graduation_rate" float64   NOT NULL,
    CONSTRAINT "pk_High_School_Metric_Scores" PRIMARY KEY (
        "school_name"
     )
);

CREATE TABLE "Middle_School_Metric_Scores" (
    "year" varchar   NOT NULL,
    "school_id" int64   NOT NULL,
    "school_name" varchar   NOT NULL,
    "report_type" varchar   NOT NULL,
    "admission_type" varchar   NOT NULL,
    "number_students_served_full_year" int64   NOT NULL,
    "october_one_enrollment" int64   NOT NULL,
    "pssa_ela_percent_students_below_basic_grades_3_to_8" float64   NOT NULL,
    "pssa_ela_percent_students_proficient_or_advanced_grades_3_to_8" float64   NOT NULL,
    "pssa_math_percent_students_below_basic_grades_3_to_8" float64   NOT NULL,
    "pssa_math_percent_students_proficient_or_advanced_grades_3_to_8" float64   NOT NULL,
    "pssa_science_percent_students_below_basic_grades_4_to_8" float64   NOT NULL,
    "pssa_science_percent_students_proficient_or_advanced_grades_4_to_8" float64   NOT NULL,
    "percent_metrics_improving_all_students" float64   NOT NULL,
    "percent_students_attending_at_least_90_percent" float64   NOT NULL,
    "number_dropouts_grades_7_to_12" int64   NOT NULL,
    "percent_students_receiving_zero_out_of_school_suspensions" float64   NOT NULL,
    CONSTRAINT "pk_Middle_School_Metric_Scores" PRIMARY KEY (
        "school_name"
     )
);

CREATE TABLE "KtoEight_School_Metric_Scores" (
    "year" varchar   NOT NULL,
    "school_id" int64   NOT NULL,
    "school_name" varchar   NOT NULL,
    "report_type" varchar   NOT NULL,
    "admission_type" varchar   NOT NULL,
    "number_students_served_full_year" int64   NOT NULL,
    "october_one_enrollment" int64   NOT NULL,
    "pssa_ela_percent_students_below_basic_grade_3" float64   NOT NULL,
    "pssa_ela_percent_students_below_basic_grades_3_to_8" float64   NOT NULL,
    "pssa_ela_percent_students_proficient_or_advanced_grade_3" float64   NOT NULL,
    "pssa_ela_percent_students_proficient_or_advanced_grades_3_to_8" float64   NOT NULL,
    "pssa_math_percent_students_below_basic_grade_3" float64   NOT NULL,
    "pssa_math_percent_students_below_basic_grades_3_to_8" float64   NOT NULL,
    "pssa_math_percent_students_proficient_or_advanced_grade_3" float64   NOT NULL,
    "pssa_math_percent_students_proficient_or_advanced_grades_3_to_8" float64   NOT NULL,
    "pssa_science_percent_students_below_basic_grades_4_to_8" float64   NOT NULL,
    "pssa_science_percent_students_proficient_or_advanced_grades_4_to_8" float64   NOT NULL,
    "percent_metrics_improving_all_students" float64   NOT NULL,
    "percent_students_attending_at_least_90_percent" float64   NOT NULL,
    "number_dropouts_grades_7_to_12" int64   NOT NULL,
    "percent_students_receiving_zero_out_of_school_suspensions" float64   NOT NULL,
    CONSTRAINT "pk_KtoEight_School_Metric_Scores" PRIMARY KEY (
        "school_name"
     )
);

CREATE TABLE "Elementary_School_Metric_Scores" (
    "year" varchar   NOT NULL,
    "school_id" int64   NOT NULL,
    "school_name" varchar   NOT NULL,
    "report_type" varchar   NOT NULL,
    "admission_type" varchar   NOT NULL,
    "number_students_served_full_year" int64   NOT NULL,
    "october_one_enrollment" int64   NOT NULL,
    "pssa_ela_percent_students_below_basic_grade_3" float64   NOT NULL,
    "pssa_ela_percent_students_below_basic_grades_3_to_8" float64   NOT NULL,
    "pssa_ela_percent_students_proficient_or_advanced_grade_3" float64   NOT NULL,
    "pssa_ela_percent_students_proficient_or_advanced_grades_3_to_8" float64   NOT NULL,
    "pssa_math_percent_students_below_basic_grade_3" float64   NOT NULL,
    "pssa_math_percent_students_below_basic_grades_3_to_8" float64   NOT NULL,
    "pssa_math_percent_students_proficient_or_advanced_grade_3" float64   NOT NULL,
    "pssa_math_percent_students_proficient_or_advanced_grades_3_to_8" float64   NOT NULL,
    "pssa_science_percent_students_below_basic_grades_4_to_8" float64   NOT NULL,
    "pssa_science_percent_students_proficient_or_advanced_grades_4_to_8" float64   NOT NULL,
    "percent_metrics_improving_all_students" float64   NOT NULL,
    "percent_students_attending_at_least_90_percent" float64   NOT NULL,
    "percent_students_receiving_zero_out_of_school_suspensions" float64   NOT NULL,
    CONSTRAINT "pk_Elementary_School_Metric_Scores" PRIMARY KEY (
        "school_name"
     )
);

CREATE TABLE "Police_Districts" (
    "district_psa" varchar   NOT NULL,
    "district" int64   NOT NULL,
    "police_service_area" varchar   NOT NULL,
    "location" varchar   NOT NULL,
    "zip_code" int64   NOT NULL,
    "phone_number" varchar   NOT NULL,
    "geometry" geometry   NOT NULL,
    CONSTRAINT "pk_Police_Districts" PRIMARY KEY (
        "district_psa"
     )
);

CREATE TABLE "Police_Location" (
    "district" int64   NOT NULL,
    "location" varchar   NOT NULL,
    "zip_code" int64   NOT NULL,
    "phone_number" varchar   NOT NULL,
    "geometry" geometry   NOT NULL,
    CONSTRAINT "pk_Police_Location" PRIMARY KEY (
        "district"
     )
);

CREATE TABLE "Incidents_Time_Place" (
    "incident_id" int64   NOT NULL,
    "district" int64   NOT NULL,
    "police_service_area" varchar   NOT NULL,
    "district_psa" varchar   NOT NULL,
    "dispatch_date_and_time" timestamp   NOT NULL,
    "dispatch_date" date   NOT NULL,
    "dispatch_time" varchar   NOT NULL,
    "dispatch_hour" float64   NOT NULL,
    "location_block" varchar   NOT NULL,
    "ucr_code" int64   NOT NULL,
    "general_crime_category" varchar   NOT NULL,
    "crime_group" varchar   NOT NULL,
    CONSTRAINT "pk_Incidents_Time_Place" PRIMARY KEY (
        "incident_id"
     )
);

CREATE TABLE "Incidents" (
    "ucr_code" int64   NOT NULL,
    "general_crime_category" object   NOT NULL,
    "crime_group" object   NOT NULL,
    CONSTRAINT "pk_Incidents" PRIMARY KEY (
        "ucr_code"
     )
);

ALTER TABLE "School_Info" ADD CONSTRAINT "fk_School_Info_district_psa" FOREIGN KEY("district_psa")
REFERENCES "Police_Districts" ("district_psa");

ALTER TABLE "High_School_Metric_Scores" ADD CONSTRAINT "fk_High_School_Metric_Scores_school_id" FOREIGN KEY("school_id")
REFERENCES "School_Info" ("school_id");

ALTER TABLE "Middle_School_Metric_Scores" ADD CONSTRAINT "fk_Middle_School_Metric_Scores_school_id" FOREIGN KEY("school_id")
REFERENCES "School_Info" ("school_id");

ALTER TABLE "KtoEight_School_Metric_Scores" ADD CONSTRAINT "fk_KtoEight_School_Metric_Scores_school_id" FOREIGN KEY("school_id")
REFERENCES "School_Info" ("school_id");

ALTER TABLE "Elementary_School_Metric_Scores" ADD CONSTRAINT "fk_Elementary_School_Metric_Scores_school_id" FOREIGN KEY("school_id")
REFERENCES "School_Info" ("school_id");

ALTER TABLE "Police_Districts" ADD CONSTRAINT "fk_Police_Districts_district" FOREIGN KEY("district")
REFERENCES "Police_Location" ("district");

ALTER TABLE "Incidents_Time_Place" ADD CONSTRAINT "fk_Incidents_Time_Place_district_psa" FOREIGN KEY("district_psa")
REFERENCES "Police_Districts" ("district_psa");

ALTER TABLE "Incidents_Time_Place" ADD CONSTRAINT "fk_Incidents_Time_Place_ucr_code" FOREIGN KEY("ucr_code")
REFERENCES "Incidents" ("ucr_code");


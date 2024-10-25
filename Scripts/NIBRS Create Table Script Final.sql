USE [NIBRS]
GO

/****** Object:  Table [dbo].[agencies]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[agencies](
	[yearly_agency_id] [int] NULL,
	[agency_id] [bigint] NOT NULL,
	[data_year] [int] NULL,
	[ori] [varchar](25) NULL,
	[legacy_ori] [varchar](25) NULL,
	[covered_by_legacy_ori] [varchar](25) NULL,
	[direct_contributor_flag] [varchar](1) NULL,
	[dormant_flag] [varchar](1) NULL,
	[dormant_year] [int] NULL,
	[reporting_type] [varchar](1) NULL,
	[ucr_agency_name] [varchar](100) NULL,
	[ncic_agency_name] [varchar](100) NULL,
	[pub_agency_name] [varchar](100) NULL,
	[pub_agency_unit] [varchar](100) NULL,
	[agency_status] [varchar](1) NULL,
	[state_id] [int] NULL,
	[state_name] [varchar](100) NULL,
	[state_abbr] [varchar](2) NULL,
	[state_postal_abbr] [varchar](2) NULL,
	[division_code] [int] NULL,
	[division_name] [varchar](100) NULL,
	[region_code] [int] NULL,
	[region_name] [varchar](100) NULL,
	[region_desc] [varchar](100) NULL,
	[agency_type_name] [varchar](100) NULL,
	[population] [int] NULL,
	[submitting_agency_id] [int] NULL,
	[sai] [varchar](25) NULL,
	[submitting_agency_name] [varchar](200) NULL,
	[suburban_area_flag] [varchar](1) NULL,
	[population_group_id] [int] NULL,
	[population_group_code] [varchar](2) NULL,
	[population_group_desc] [varchar](100) NULL,
	[parent_pop_group_code] [int] NULL,
	[parent_pop_group_desc] [varchar](100) NULL,
	[mip_flag] [varchar](1) NULL,
	[pop_sort_order] [int] NULL,
	[summary_rape_def] [varchar](1) NULL,
	[pe_reported_flag] [varchar](1) NULL,
	[male_officer] [int] NULL,
	[male_civilian] [int] NULL,
	[male_total] [int] NULL,
	[female_officer] [int] NULL,
	[female_civilian] [int] NULL,
	[female_total] [int] NULL,
	[officer_rate] [int] NULL,
	[employee_rate] [int] NULL,
	[nibrs_cert_date] [date] NULL,
	[nibrs_start_date] [date] NULL,
	[nibrs_leoka_start_date] [date] NULL,
	[nibrs_ct_start_date] [date] NULL,
	[nibrs_multi_bias_start_date] [date] NULL,
	[nibrs_off_eth_start_date] [date] NULL,
	[covered_flag] [varchar](1) NULL,
	[county_name] [varchar](100) NULL,
	[msa_name] [varchar](100) NULL,
	[publishable_flag] [varchar](1) NULL,
	[participated] [varchar](1) NULL,
	[nibrs_participated] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[agency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[agency_participation]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[agency_participation](
	[year] [smallint] NOT NULL,
	[state_name] [varchar](100) NULL,
	[state_abbr] [varchar](2) NULL,
	[agency_id] [bigint] NOT NULL,
	[agency_ori] [char](9) NULL,
	[agency_name] [varchar](100) NULL,
	[agency_population] [bigint] NULL,
	[population_group_code] [varchar](2) NULL,
	[population_group] [varchar](150) NULL,
	[reported] [int] NULL,
	[months_reported] [int] NULL,
	[nibrs_reported] [int] NULL,
	[nibrs_months_reported] [int] NULL,
	[covered] [int] NULL,
	[participated] [int] NULL,
	[nibrs_participated] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[cde_agencies]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cde_agencies](
	[agency_id] [bigint] NOT NULL,
	[ori] [char](9) NOT NULL,
	[legacy_ori] [char](9) NOT NULL,
	[agency_name] [text] NULL,
	[short_name] [text] NULL,
	[agency_type_id] [smallint] NOT NULL,
	[agency_type_name] [text] NULL,
	[tribe_id] [bigint] NULL,
	[campus_id] [bigint] NULL,
	[city_id] [bigint] NULL,
	[city_name] [text] NULL,
	[state_id] [smallint] NOT NULL,
	[state_abbr] [char](2) NOT NULL,
	[primary_county_id] [bigint] NULL,
	[primary_county] [text] NULL,
	[primary_county_fips] [varchar](5) NULL,
	[agency_status] [char](1) NULL,
	[submitting_agency_id] [bigint] NULL,
	[submitting_sai] [varchar](9) NULL,
	[submitting_name] [text] NULL,
	[submitting_state_abbr] [varchar](2) NULL,
	[start_year] [smallint] NULL,
	[dormant_year] [smallint] NULL,
	[current_year] [smallint] NULL,
	[revised_rape_start] [smallint] NULL,
	[current_nibrs_start_year] [smallint] NULL,
	[population] [bigint] NULL,
	[population_group_code] [varchar](2) NULL,
	[population_group_desc] [text] NULL,
	[population_source_flag] [varchar](1) NULL,
	[suburban_area_flag] [varchar](1) NULL,
	[core_city_flag] [varchar](1) NULL,
	[months_reported] [smallint] NULL,
	[nibrs_months_reported] [smallint] NULL,
	[past_10_years_reported] [smallint] NULL,
	[covered_by_id] [bigint] NULL,
	[covered_by_ori] [char](9) NULL,
	[covered_by_name] [varchar](100) NULL,
	[staffing_year] [smallint] NULL,
	[total_officers] [int] NULL,
	[total_civilians] [int] NULL,
	[icpsr_zip] [char](5) NULL,
	[icpsr_lat] [numeric](18, 0) NULL,
	[icpsr_lng] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[agency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_activity_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_activity_type](
	[activity_type_id] [smallint] NOT NULL,
	[activity_type_code] [char](2) NULL,
	[activity_type_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_age]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_age](
	[age_id] [smallint] NOT NULL,
	[age_code] [char](2) NULL,
	[age_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[age_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_arrest_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_arrest_type](
	[arrest_type_id] [smallint] NOT NULL,
	[arrest_type_code] [char](1) NULL,
	[arrest_type_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[arrest_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_arrestee]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_arrestee](
	[arrestee_id] [bigint] NOT NULL,
	[incident_id] [bigint] NOT NULL,
	[arrestee_seq_num] [bigint] NULL,
	[arrest_num] [varchar](12) NULL,
	[arrest_date] [datetime] NULL,
	[arrest_type_id] [smallint] NULL,
	[multiple_indicator] [char](1) NULL,
	[offense_type_id] [bigint] NOT NULL,
	[age_id] [smallint] NOT NULL,
	[age_num] [smallint] NULL,
	[sex_code] [char](1) NULL,
	[race_id] [smallint] NOT NULL,
	[ethnicity_id] [smallint] NULL,
	[resident_code] [char](1) NULL,
	[under_18_disposition_code] [char](1) NULL,
	[clearance_ind] [char](1) NULL,
	[ff_line_number] [bigint] NULL,
	[age_range_low_num] [smallint] NULL,
	[age_range_high_num] [smallint] NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[arrestee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_arrestee_weapon]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_arrestee_weapon](
	[arrestee_id] [bigint] NOT NULL,
	[weapon_id] [smallint] NOT NULL,
	[nibrs_arrestee_weapon_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[nibrs_arrestee_weapon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_assignment_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_assignment_type](
	[assignment_type_id] [smallint] NOT NULL,
	[assignment_type_code] [char](1) NULL,
	[assignment_type_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[assignment_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_bias_list]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_bias_list](
	[bias_id] [smallint] NOT NULL,
	[bias_code] [char](2) NULL,
	[bias_name] [varchar](100) NULL,
	[bias_category] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[bias_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_bias_motivation]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_bias_motivation](
	[bias_id] [smallint] NOT NULL,
	[offense_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_circumstances]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_circumstances](
	[circumstances_id] [smallint] NOT NULL,
	[circumstances_type] [char](1) NULL,
	[circumstances_code] [smallint] NULL,
	[circumstances_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[circumstances_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_cleared_except]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_cleared_except](
	[cleared_except_id] [smallint] NOT NULL,
	[cleared_except_code] [char](1) NULL,
	[cleared_except_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cleared_except_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_criminal_act]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_criminal_act](
	[criminal_act_id] [smallint] NOT NULL,
	[offense_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_criminal_act_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_criminal_act_type](
	[criminal_act_id] [smallint] NOT NULL,
	[criminal_act_code] [char](1) NULL,
	[criminal_act_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[criminal_act_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_drug_measure_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_drug_measure_type](
	[drug_measure_type_id] [smallint] NOT NULL,
	[drug_measure_code] [char](2) NULL,
	[drug_measure_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[drug_measure_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_ethnicity]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_ethnicity](
	[ethnicity_id] [smallint] NOT NULL,
	[ethnicity_code] [char](1) NULL,
	[ethnicity_name] [varchar](100) NULL,
	[hc_flag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ethnicity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_incident]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_incident](
	[agency_id] [bigint] NOT NULL,
	[incident_id] [bigint] NOT NULL,
	[nibrs_month_id] [bigint] NOT NULL,
	[incident_number] [varchar](15) NULL,
	[cargo_theft_flag] [char](1) NULL,
	[submission_date] [datetime] NULL,
	[incident_date] [datetime] NULL,
	[report_date_flag] [varchar](1) NULL,
	[incident_hour] [smallint] NULL,
	[cleared_except_id] [smallint] NOT NULL,
	[cleared_except_date] [datetime] NULL,
	[incident_status] [smallint] NULL,
	[data_home] [char](1) NULL,
	[ddocname] [varchar](100) NULL,
	[orig_format] [char](1) NULL,
	[ff_line_number] [bigint] NULL,
	[did] [bigint] NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[incident_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_injury]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_injury](
	[injury_id] [smallint] NOT NULL,
	[injury_code] [char](1) NULL,
	[injury_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[injury_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_justifiable_force]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_justifiable_force](
	[justifiable_force_id] [smallint] NOT NULL,
	[justifiable_force_code] [char](1) NULL,
	[justifiable_force_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[justifiable_force_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_location_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_location_type](
	[location_id] [bigint] NOT NULL,
	[location_code] [varchar](10) NULL,
	[location_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_month]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_month](
	[nibrs_month_id] [bigint] NOT NULL,
	[agency_id] [bigint] NOT NULL,
	[month_num] [smallint] NOT NULL,
	[data_year] [smallint] NOT NULL,
	[reported_status] [varchar](1) NULL,
	[report_date] [datetime] NULL,
	[prepared_date] [datetime] NULL,
	[update_flag] [char](1) NULL,
	[orig_format] [char](1) NULL,
	[ff_line_number] [bigint] NULL,
	[data_home] [varchar](1) NULL,
	[ddocname] [varchar](50) NULL,
	[did] [bigint] NULL,
	[month_pub_status] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[nibrs_month_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_offender]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_offender](
	[offender_id] [bigint] NOT NULL,
	[incident_id] [bigint] NOT NULL,
	[offender_seq_num] [smallint] NULL,
	[age_id] [smallint] NULL,
	[age_num] [smallint] NULL,
	[sex_code] [char](1) NULL,
	[race_id] [smallint] NULL,
	[ethnicity_id] [smallint] NULL,
	[ff_line_number] [bigint] NULL,
	[age_range_low_num] [smallint] NULL,
	[age_range_high_num] [smallint] NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[offender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_offense]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_offense](
	[offense_id] [bigint] NOT NULL,
	[incident_id] [bigint] NOT NULL,
	[offense_type_id] [bigint] NOT NULL,
	[attempt_complete_flag] [char](1) NULL,
	[location_id] [bigint] NOT NULL,
	[num_premises_entered] [smallint] NULL,
	[method_entry_code] [char](1) NULL,
	[ff_line_number] [bigint] NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[offense_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_offense_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_offense_type](
	[offense_type_id] [bigint] NOT NULL,
	[offense_code] [varchar](5) NULL,
	[offense_name] [varchar](100) NULL,
	[crime_against] [varchar](100) NULL,
	[ct_flag] [char](1) NULL,
	[hc_flag] [char](1) NULL,
	[hc_code] [varchar](5) NULL,
	[offense_category_name] [varchar](100) NULL,
	[offense_group] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[offense_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_prop_desc_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_prop_desc_type](
	[prop_desc_id] [smallint] NOT NULL,
	[prop_desc_code] [char](2) NULL,
	[prop_desc_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[prop_desc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_prop_loss_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_prop_loss_type](
	[prop_loss_id] [smallint] NOT NULL,
	[prop_loss_name] [varchar](100) NULL,
	[prop_loss_desc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[prop_loss_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_property]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_property](
	[property_id] [bigint] NOT NULL,
	[incident_id] [bigint] NOT NULL,
	[prop_loss_id] [smallint] NOT NULL,
	[stolen_count] [smallint] NULL,
	[recovered_count] [smallint] NULL,
	[ff_line_number] [bigint] NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_property_desc]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_property_desc](
	[property_id] [bigint] NOT NULL,
	[prop_desc_id] [smallint] NOT NULL,
	[property_value] [bigint] NULL,
	[date_recovered] [datetime] NULL,
	[nibrs_prop_desc_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[nibrs_prop_desc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_relationship]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_relationship](
	[relationship_id] [smallint] NOT NULL,
	[relationship_code] [char](2) NULL,
	[relationship_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[relationship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_suspect_using]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_suspect_using](
	[suspect_using_id] [smallint] NOT NULL,
	[offense_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_suspected_drug]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_suspected_drug](
	[suspected_drug_type_id] [smallint] NOT NULL,
	[property_id] [bigint] NOT NULL,
	[est_drug_qty] [float] NULL,
	[drug_measure_type_id] [smallint] NULL,
	[nibrs_suspected_drug_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[nibrs_suspected_drug_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_suspected_drug_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_suspected_drug_type](
	[suspected_drug_type_id] [smallint] NOT NULL,
	[suspected_drug_code] [char](1) NULL,
	[suspected_drug_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[suspected_drug_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_using_list]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_using_list](
	[suspect_using_id] [smallint] NOT NULL,
	[suspect_using_code] [char](1) NULL,
	[suspect_using_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[suspect_using_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_victim]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_victim](
	[victim_id] [bigint] NOT NULL,
	[incident_id] [bigint] NOT NULL,
	[victim_seq_num] [smallint] NULL,
	[victim_type_id] [smallint] NOT NULL,
	[assignment_type_id] [smallint] NULL,
	[activity_type_id] [smallint] NULL,
	[outside_agency_id] [bigint] NULL,
	[age_id] [smallint] NULL,
	[age_num] [smallint] NULL,
	[sex_code] [char](1) NULL,
	[race_id] [smallint] NULL,
	[ethnicity_id] [smallint] NULL,
	[resident_status_code] [char](1) NULL,
	[agency_data_year] [smallint] NULL,
	[ff_line_number] [bigint] NULL,
	[age_range_low_num] [smallint] NULL,
	[age_range_high_num] [smallint] NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[victim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_victim_circumstances]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_victim_circumstances](
	[victim_id] [bigint] NOT NULL,
	[circumstances_id] [smallint] NOT NULL,
	[justifiable_force_id] [smallint] NULL,
	[data_year] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_victim_injury]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_victim_injury](
	[victim_id] [bigint] NOT NULL,
	[injury_id] [smallint] NOT NULL,
	[data_year] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_victim_offender_rel]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_victim_offender_rel](
	[victim_id] [bigint] NOT NULL,
	[offender_id] [bigint] NOT NULL,
	[relationship_id] [smallint] NOT NULL,
	[nibrs_victim_offender_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[nibrs_victim_offender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_victim_offense]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_victim_offense](
	[victim_id] [bigint] NOT NULL,
	[offense_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_victim_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_victim_type](
	[victim_type_id] [smallint] NOT NULL,
	[victim_type_code] [char](1) NULL,
	[victim_type_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[victim_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_weapon]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_weapon](
	[weapon_id] [smallint] NOT NULL,
	[offense_id] [bigint] NOT NULL,
	[nibrs_weapon_id] [bigint] NOT NULL,
	[data_year] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[nibrs_weapon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nibrs_weapon_type]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nibrs_weapon_type](
	[weapon_id] [smallint] NOT NULL,
	[weapon_code] [varchar](3) NULL,
	[weapon_name] [varchar](100) NULL,
	[shr_flag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[weapon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ref_race]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ref_race](
	[race_id] [smallint] NOT NULL,
	[race_code] [varchar](2) NOT NULL,
	[race_desc] [varchar](100) NOT NULL,
	[sort_order] [smallint] NULL,
	[start_year] [smallint] NULL,
	[end_year] [smallint] NULL,
	[notes] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[race_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ref_state]    Script Date: 05-09-2024 6.32.08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ref_state](
	[state_id] [smallint] NOT NULL,
	[division_id] [smallint] NOT NULL,
	[state_name] [varchar](100) NULL,
	[state_code] [varchar](2) NULL,
	[state_abbr] [varchar](2) NULL,
	[state_postal_abbr] [varchar](2) NULL,
	[state_fips_code] [varchar](2) NULL,
	[state_pub_freq_months] [smallint] NULL,
	[change_user] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[nibrs_ethnicity] ADD  DEFAULT ('Y') FOR [hc_flag]
GO

ALTER TABLE [dbo].[agency_participation]  WITH CHECK ADD FOREIGN KEY([agency_id])
REFERENCES [dbo].[cde_agencies] ([agency_id])
GO

ALTER TABLE [dbo].[cde_agencies]  WITH CHECK ADD FOREIGN KEY([state_id])
REFERENCES [dbo].[ref_state] ([state_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee]  WITH CHECK ADD FOREIGN KEY([age_id])
REFERENCES [dbo].[nibrs_age] ([age_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee]  WITH CHECK ADD FOREIGN KEY([arrest_type_id])
REFERENCES [dbo].[nibrs_arrest_type] ([arrest_type_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee]  WITH CHECK ADD FOREIGN KEY([ethnicity_id])
REFERENCES [dbo].[nibrs_ethnicity] ([ethnicity_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee]  WITH CHECK ADD FOREIGN KEY([incident_id])
REFERENCES [dbo].[nibrs_incident] ([incident_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee]  WITH CHECK ADD FOREIGN KEY([offense_type_id])
REFERENCES [dbo].[nibrs_offense_type] ([offense_type_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee]  WITH CHECK ADD FOREIGN KEY([race_id])
REFERENCES [dbo].[ref_race] ([race_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee_weapon]  WITH CHECK ADD FOREIGN KEY([arrestee_id])
REFERENCES [dbo].[nibrs_arrestee] ([arrestee_id])
GO

ALTER TABLE [dbo].[nibrs_arrestee_weapon]  WITH CHECK ADD FOREIGN KEY([weapon_id])
REFERENCES [dbo].[nibrs_weapon_type] ([weapon_id])
GO

ALTER TABLE [dbo].[nibrs_bias_motivation]  WITH CHECK ADD FOREIGN KEY([offense_id])
REFERENCES [dbo].[nibrs_offense] ([offense_id])
GO

ALTER TABLE [dbo].[nibrs_incident]  WITH CHECK ADD FOREIGN KEY([cleared_except_id])
REFERENCES [dbo].[nibrs_cleared_except] ([cleared_except_id])
GO

ALTER TABLE [dbo].[nibrs_incident]  WITH CHECK ADD  CONSTRAINT [nibrs_incident_agency_fk] FOREIGN KEY([agency_id])
REFERENCES [dbo].[agencies] ([agency_id])
GO

ALTER TABLE [dbo].[nibrs_incident] CHECK CONSTRAINT [nibrs_incident_agency_fk]
GO

ALTER TABLE [dbo].[nibrs_month]  WITH CHECK ADD  CONSTRAINT [nibrs_month_agency_fk] FOREIGN KEY([agency_id])
REFERENCES [dbo].[agencies] ([agency_id])
GO

ALTER TABLE [dbo].[nibrs_month] CHECK CONSTRAINT [nibrs_month_agency_fk]
GO

ALTER TABLE [dbo].[nibrs_offender]  WITH CHECK ADD FOREIGN KEY([incident_id])
REFERENCES [dbo].[nibrs_incident] ([incident_id])
GO

ALTER TABLE [dbo].[nibrs_offense]  WITH CHECK ADD FOREIGN KEY([incident_id])
REFERENCES [dbo].[nibrs_incident] ([incident_id])
GO

ALTER TABLE [dbo].[nibrs_offense]  WITH CHECK ADD FOREIGN KEY([location_id])
REFERENCES [dbo].[nibrs_location_type] ([location_id])
GO

ALTER TABLE [dbo].[nibrs_offense]  WITH CHECK ADD FOREIGN KEY([offense_type_id])
REFERENCES [dbo].[nibrs_offense_type] ([offense_type_id])
GO

ALTER TABLE [dbo].[nibrs_property]  WITH CHECK ADD FOREIGN KEY([incident_id])
REFERENCES [dbo].[nibrs_incident] ([incident_id])
GO

ALTER TABLE [dbo].[nibrs_property]  WITH CHECK ADD FOREIGN KEY([prop_loss_id])
REFERENCES [dbo].[nibrs_prop_loss_type] ([prop_loss_id])
GO

ALTER TABLE [dbo].[nibrs_property_desc]  WITH CHECK ADD FOREIGN KEY([prop_desc_id])
REFERENCES [dbo].[nibrs_prop_desc_type] ([prop_desc_id])
GO

ALTER TABLE [dbo].[nibrs_property_desc]  WITH CHECK ADD FOREIGN KEY([property_id])
REFERENCES [dbo].[nibrs_property] ([property_id])
GO

ALTER TABLE [dbo].[nibrs_suspect_using]  WITH CHECK ADD FOREIGN KEY([offense_id])
REFERENCES [dbo].[nibrs_offense] ([offense_id])
GO

ALTER TABLE [dbo].[nibrs_suspect_using]  WITH CHECK ADD FOREIGN KEY([suspect_using_id])
REFERENCES [dbo].[nibrs_using_list] ([suspect_using_id])
GO

ALTER TABLE [dbo].[nibrs_suspected_drug]  WITH CHECK ADD FOREIGN KEY([drug_measure_type_id])
REFERENCES [dbo].[nibrs_drug_measure_type] ([drug_measure_type_id])
GO

ALTER TABLE [dbo].[nibrs_suspected_drug]  WITH CHECK ADD FOREIGN KEY([property_id])
REFERENCES [dbo].[nibrs_property] ([property_id])
GO

ALTER TABLE [dbo].[nibrs_suspected_drug]  WITH CHECK ADD FOREIGN KEY([suspected_drug_type_id])
REFERENCES [dbo].[nibrs_suspected_drug_type] ([suspected_drug_type_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([activity_type_id])
REFERENCES [dbo].[nibrs_activity_type] ([activity_type_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([age_id])
REFERENCES [dbo].[nibrs_age] ([age_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([assignment_type_id])
REFERENCES [dbo].[nibrs_assignment_type] ([assignment_type_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([ethnicity_id])
REFERENCES [dbo].[nibrs_ethnicity] ([ethnicity_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([incident_id])
REFERENCES [dbo].[nibrs_incident] ([incident_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([race_id])
REFERENCES [dbo].[ref_race] ([race_id])
GO

ALTER TABLE [dbo].[nibrs_victim]  WITH CHECK ADD FOREIGN KEY([victim_type_id])
REFERENCES [dbo].[nibrs_victim_type] ([victim_type_id])
GO

ALTER TABLE [dbo].[nibrs_victim_circumstances]  WITH CHECK ADD FOREIGN KEY([circumstances_id])
REFERENCES [dbo].[nibrs_circumstances] ([circumstances_id])
GO

ALTER TABLE [dbo].[nibrs_victim_circumstances]  WITH CHECK ADD FOREIGN KEY([justifiable_force_id])
REFERENCES [dbo].[nibrs_justifiable_force] ([justifiable_force_id])
GO

ALTER TABLE [dbo].[nibrs_victim_circumstances]  WITH CHECK ADD FOREIGN KEY([victim_id])
REFERENCES [dbo].[nibrs_victim] ([victim_id])
GO

ALTER TABLE [dbo].[nibrs_victim_injury]  WITH CHECK ADD FOREIGN KEY([injury_id])
REFERENCES [dbo].[nibrs_injury] ([injury_id])
GO

ALTER TABLE [dbo].[nibrs_victim_injury]  WITH CHECK ADD FOREIGN KEY([victim_id])
REFERENCES [dbo].[nibrs_victim] ([victim_id])
GO

ALTER TABLE [dbo].[nibrs_victim_offender_rel]  WITH CHECK ADD FOREIGN KEY([offender_id])
REFERENCES [dbo].[nibrs_offender] ([offender_id])
GO

ALTER TABLE [dbo].[nibrs_victim_offender_rel]  WITH CHECK ADD FOREIGN KEY([relationship_id])
REFERENCES [dbo].[nibrs_relationship] ([relationship_id])
GO

ALTER TABLE [dbo].[nibrs_victim_offender_rel]  WITH CHECK ADD FOREIGN KEY([victim_id])
REFERENCES [dbo].[nibrs_victim] ([victim_id])
GO

ALTER TABLE [dbo].[nibrs_victim_offense]  WITH CHECK ADD FOREIGN KEY([offense_id])
REFERENCES [dbo].[nibrs_offense] ([offense_id])
GO

ALTER TABLE [dbo].[nibrs_victim_offense]  WITH CHECK ADD FOREIGN KEY([victim_id])
REFERENCES [dbo].[nibrs_victim] ([victim_id])
GO

ALTER TABLE [dbo].[nibrs_weapon]  WITH CHECK ADD FOREIGN KEY([offense_id])
REFERENCES [dbo].[nibrs_offense] ([offense_id])
GO

ALTER TABLE [dbo].[nibrs_weapon]  WITH CHECK ADD FOREIGN KEY([weapon_id])
REFERENCES [dbo].[nibrs_weapon_type] ([weapon_id])
GO



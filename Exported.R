cspro.factor.type = 1
cspro.factor.create.new.variable = FALSE

# CSPro Export Factor Options:

#	cspro.factor.type (0): do not use factors
#	cspro.factor.type (1): factor only discrete numeric variables
#	cspro.factor.type (2): factor both discrete numeric and alpha variables

#	cspro.factor.create.new.variable: TRUE to add the factored variables as separate variables


exported <- read.fortran("D:/PNOC EC Carl Files/R/Exported.dat",c("I3","A50","A100","I7","I4","I4","F11","A50","I3","I6","I4","A50","I6","A50","I6","A50","I6","A50","I6","A50","I1","I1","I1","I2","A300","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","I2","A300","A300","A300","A300","A300","A300","A300","A300","A300","A300","A300","A300","I1","I2","I2","I2","I2","A200","A200","I1","I1","A50","I1","A200","A50","I1","A200","A50","I1","A200","A50","I1","A200","A200","I1","A100","A300","I1","A100","I1","I1"))

names(exported) <- c("pnocec_q_no","respondent_name","respo_address","tel_no","time_start","time_end","mobile_no","interviewer_name","interviewer_id","date_of_interview","time_of_interview","witnessed_validated_by","witness_validation_date","edited_by","date_of_editing","quality_checked_by","quality_check_date","data_encoded_by","date_of_encoding","screener_name","s1","s2","s3","showcard_of_satisfaction_rating","reason_for_the_rating","treats_customer","strickly_and_fairly","provides_clear_and","addresses_queries_concerns","demonstrates_willingness","is_easy_to_contact","appears_neat","conveys_trust_and","agreed_upon_deadlines","contract_terms_and","purpose_deliverables","filing_of_complaints","complaints_are_resolved","resolutions_to_complaints","files_records_are","easy_to_obtain","clear_and_relevant","is_available_and","contains_the_info","is_user_friendly","signages_are_visible","office_premises_are_clean","office_premises_are_well","office_premises_are_safe","office_has_separate","s_and_o_reason","s_and_o_suggestions","p_o_reason","p_o_suggestions","ch_and_rk_reason","ch_and_rk_suggestions","i_and_c_reason","i_and_c_suggestions","i_and_cw_reason","i_and_cw_suggestions","facilities_reason","facilities_suggestions","project_sites_with_or_without_ie","the_pnoc_ec_conducts_iec_campaig","the_presentation_in_the_iec_mate","the_presenters_are_responsive_to","the_presenters_are_knowledgeable","remarks_comments","suggestions","usefulness_of_the_iec_campaign","sites_with_or_without_pnoc_ec_sp","karunungan","karunungan_rating","karunungan_reason","kalusugan","kalusugan_rating","kalusugan_reason","kabuhayan","kabuhayan_rating","kabuhayan_reason","kapaligiran","kapaligiran_rating","kapaligiran_reason","which_spp_program","where_do_you_most_often_get_info","specify_if_others","suggestions_for_improvement","have_you_encountered_problems","if_yes_please_specify","have_you_already_visited_the_web","have_you_been_to_the_pnoc_office")

if( cspro.factor.type != 0 ) {

	if( cspro.factor.create.new.variable ) {
		exported$s1.f <- factor(exported$s1,levels = c(1,2),labels = c("Yes - Close interview","No - Proceed to S2"))
	} else {
		exported$s1 <- factor(exported$s1,levels = c(1,2),labels = c("Yes - Close interview","No - Proceed to S2"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s2.f <- factor(exported$s2,levels = c(1,2),labels = c("Yes - Close interview","No - Proceed to S3"))
	} else {
		exported$s2 <- factor(exported$s2,levels = c(1,2),labels = c("Yes - Close interview","No - Proceed to S3"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$s3.f <- factor(exported$s3,levels = c(1,2,3,4,5,6),labels = c("SERVICE A: Joint Venture","SERVICE B: Compliance to Regulator","SERVICE C: COC 122","SERVICE D: SC 37","SERVICE E: COC 41","SERVICE F: COC 185 & 186"))
	} else {
		exported$s3 <- factor(exported$s3,levels = c(1,2,3,4,5,6),labels = c("SERVICE A: Joint Venture","SERVICE B: Compliance to Regulator","SERVICE C: COC 122","SERVICE D: SC 37","SERVICE E: COC 41","SERVICE F: COC 185 & 186"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$showcard_of_satisfaction_rating.f <- factor(exported$showcard_of_satisfaction_rating,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$showcard_of_satisfaction_rating <- factor(exported$showcard_of_satisfaction_rating,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$treats_customer.f <- factor(exported$treats_customer,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$treats_customer <- factor(exported$treats_customer,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$strickly_and_fairly.f <- factor(exported$strickly_and_fairly,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$strickly_and_fairly <- factor(exported$strickly_and_fairly,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$provides_clear_and.f <- factor(exported$provides_clear_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$provides_clear_and <- factor(exported$provides_clear_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$addresses_queries_concerns.f <- factor(exported$addresses_queries_concerns,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$addresses_queries_concerns <- factor(exported$addresses_queries_concerns,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$demonstrates_willingness.f <- factor(exported$demonstrates_willingness,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$demonstrates_willingness <- factor(exported$demonstrates_willingness,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$is_easy_to_contact.f <- factor(exported$is_easy_to_contact,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$is_easy_to_contact <- factor(exported$is_easy_to_contact,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$appears_neat.f <- factor(exported$appears_neat,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$appears_neat <- factor(exported$appears_neat,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$conveys_trust_and.f <- factor(exported$conveys_trust_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$conveys_trust_and <- factor(exported$conveys_trust_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$agreed_upon_deadlines.f <- factor(exported$agreed_upon_deadlines,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$agreed_upon_deadlines <- factor(exported$agreed_upon_deadlines,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$contract_terms_and.f <- factor(exported$contract_terms_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$contract_terms_and <- factor(exported$contract_terms_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$purpose_deliverables.f <- factor(exported$purpose_deliverables,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$purpose_deliverables <- factor(exported$purpose_deliverables,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$filing_of_complaints.f <- factor(exported$filing_of_complaints,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$filing_of_complaints <- factor(exported$filing_of_complaints,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$complaints_are_resolved.f <- factor(exported$complaints_are_resolved,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$complaints_are_resolved <- factor(exported$complaints_are_resolved,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$resolutions_to_complaints.f <- factor(exported$resolutions_to_complaints,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$resolutions_to_complaints <- factor(exported$resolutions_to_complaints,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$files_records_are.f <- factor(exported$files_records_are,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$files_records_are <- factor(exported$files_records_are,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$easy_to_obtain.f <- factor(exported$easy_to_obtain,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$easy_to_obtain <- factor(exported$easy_to_obtain,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$clear_and_relevant.f <- factor(exported$clear_and_relevant,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$clear_and_relevant <- factor(exported$clear_and_relevant,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$is_available_and.f <- factor(exported$is_available_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$is_available_and <- factor(exported$is_available_and,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$contains_the_info.f <- factor(exported$contains_the_info,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$contains_the_info <- factor(exported$contains_the_info,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$is_user_friendly.f <- factor(exported$is_user_friendly,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$is_user_friendly <- factor(exported$is_user_friendly,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$signages_are_visible.f <- factor(exported$signages_are_visible,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$signages_are_visible <- factor(exported$signages_are_visible,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$office_premises_are_clean.f <- factor(exported$office_premises_are_clean,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$office_premises_are_clean <- factor(exported$office_premises_are_clean,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$office_premises_are_well.f <- factor(exported$office_premises_are_well,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$office_premises_are_well <- factor(exported$office_premises_are_well,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$office_premises_are_safe.f <- factor(exported$office_premises_are_safe,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$office_premises_are_safe <- factor(exported$office_premises_are_safe,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$office_has_separate.f <- factor(exported$office_has_separate,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$office_has_separate <- factor(exported$office_has_separate,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$project_sites_with_or_without_ie.f <- factor(exported$project_sites_with_or_without_ie,levels = c(1,2),labels = c("With IEC Campaign","Without IEC Campaign"))
	} else {
		exported$project_sites_with_or_without_ie <- factor(exported$project_sites_with_or_without_ie,levels = c(1,2),labels = c("With IEC Campaign","Without IEC Campaign"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$the_pnoc_ec_conducts_iec_campaig.f <- factor(exported$the_pnoc_ec_conducts_iec_campaig,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$the_pnoc_ec_conducts_iec_campaig <- factor(exported$the_pnoc_ec_conducts_iec_campaig,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$the_presentation_in_the_iec_mate.f <- factor(exported$the_presentation_in_the_iec_mate,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$the_presentation_in_the_iec_mate <- factor(exported$the_presentation_in_the_iec_mate,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$the_presenters_are_responsive_to.f <- factor(exported$the_presenters_are_responsive_to,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$the_presenters_are_responsive_to <- factor(exported$the_presenters_are_responsive_to,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$the_presenters_are_knowledgeable.f <- factor(exported$the_presenters_are_knowledgeable,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	} else {
		exported$the_presenters_are_knowledgeable <- factor(exported$the_presenters_are_knowledgeable,levels = c(5,4,3,2,1,99),labels = c("5","4","3","2","1","99"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$usefulness_of_the_iec_campaign.f <- factor(exported$usefulness_of_the_iec_campaign,levels = c(5,4,3,2,1),labels = c("5","4","3","2","1"))
	} else {
		exported$usefulness_of_the_iec_campaign <- factor(exported$usefulness_of_the_iec_campaign,levels = c(5,4,3,2,1),labels = c("5","4","3","2","1"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$sites_with_or_without_pnoc_ec_sp.f <- factor(exported$sites_with_or_without_pnoc_ec_sp,levels = c(1,2),labels = c("With PNOC EC SPP","Without PNOC EC SPP"))
	} else {
		exported$sites_with_or_without_pnoc_ec_sp <- factor(exported$sites_with_or_without_pnoc_ec_sp,levels = c(1,2),labels = c("With PNOC EC SPP","Without PNOC EC SPP"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$karunungan_rating.f <- factor(exported$karunungan_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	} else {
		exported$karunungan_rating <- factor(exported$karunungan_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$kalusugan_rating.f <- factor(exported$kalusugan_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	} else {
		exported$kalusugan_rating <- factor(exported$kalusugan_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$kabuhayan_rating.f <- factor(exported$kabuhayan_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	} else {
		exported$kabuhayan_rating <- factor(exported$kabuhayan_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$kapaligiran_rating.f <- factor(exported$kapaligiran_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	} else {
		exported$kapaligiran_rating <- factor(exported$kapaligiran_rating,levels = c(5,4,3,2,1,0),labels = c("5","4","3","2","1","0"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$where_do_you_most_often_get_info.f <- factor(exported$where_do_you_most_often_get_info,levels = c(1,2,3,4,5,6,7,8),labels = c("1","2","3","4","5","6","7","8"))
	} else {
		exported$where_do_you_most_often_get_info <- factor(exported$where_do_you_most_often_get_info,levels = c(1,2,3,4,5,6,7,8),labels = c("1","2","3","4","5","6","7","8"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$have_you_encountered_problems.f <- factor(exported$have_you_encountered_problems,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$have_you_encountered_problems <- factor(exported$have_you_encountered_problems,levels = c(1,2),labels = c("Yes","No"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$have_you_already_visited_the_web.f <- factor(exported$have_you_already_visited_the_web,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$have_you_already_visited_the_web <- factor(exported$have_you_already_visited_the_web,levels = c(1,2),labels = c("Yes","No"))
	}

	if( cspro.factor.create.new.variable ) {
		exported$have_you_been_to_the_pnoc_office.f <- factor(exported$have_you_been_to_the_pnoc_office,levels = c(1,2),labels = c("Yes","No"))
	} else {
		exported$have_you_been_to_the_pnoc_office <- factor(exported$have_you_been_to_the_pnoc_office,levels = c(1,2),labels = c("Yes","No"))
	}

}

rm(cspro.factor.type)
rm(cspro.factor.create.new.variable)

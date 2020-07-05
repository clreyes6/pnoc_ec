# Set the working directory
getwd()
setwd("C:\\Users\\USER\\Desktop\\CSPRO Concatenate")

# Examine the data
exported
head(exported)
str(exported)
summary(exported)

# Trim every variable
library(stringr)
pnocec_q_noT <- str_trim(exported$pnocec_q_no, side = c("both", "left", "right"))
respondent_nameT <- str_trim(exported$respondent_name, side = c("both", "left", "right"))
respo_addressT <- str_trim(exported$respo_address, side = c("both", "left", "right"))
tel_noT <- str_trim(exported$tel_no, side = c("both", "left", "right"))
time_startT <- str_trim(exported$time_start, side = c("both", "left", "right"))
time_endT <- str_trim(exported$time_end, side = c("both", "left", "right"))
mobile_noT <- str_trim(exported$mobile_no, side = c("both", "left", "right"))
interviewer_nameT <- str_trim(exported$interviewer_name, side = c("both", "left", "right"))
interviewer_idT <- str_trim(exported$interviewer_id, side = c("both", "left", "right"))
date_of_interviewT <- str_trim(exported$date_of_interview, side = c("both", "left", "right"))
time_of_interviewT <- str_trim(exported$time_of_interview, side = c("both", "left", "right"))
witnessed_validated_byT <- str_trim(exported$witnessed_validated_by, side = c("both", "left", "right"))
witness_validation_dateT <- str_trim(exported$witness_validation_date, side = c("both", "left", "right"))
edited_byT <- str_trim(exported$edited_by, side = c("both", "left", "right"))
date_of_editingT <- str_trim(exported$date_of_editing, side = c("both", "left", "right"))
quality_checked_byT <- str_trim(exported$quality_checked_by, side = c("both", "left", "right"))
quality_check_dateT <- str_trim(exported$quality_check_date, side = c("both", "left", "right"))
data_encoded_byT <- str_trim(exported$data_encoded_by, side = c("both", "left", "right"))
date_of_encodingT <- str_trim(exported$date_of_encoding, side = c("both", "left", "right"))
screener_nameT <- str_trim(exported$screener_name, side = c("both", "left", "right"))
s1T <- str_trim(exported$s1, side = c("both", "left", "right"))
s2T <- str_trim(exported$s2, side = c("both", "left", "right"))
s3T <- str_trim(exported$s3, side = c("both", "left", "right"))
showcard_of_satisfaction_ratingT <- str_trim(exported$showcard_of_satisfaction_rating, side = c("both", "left", "right"))
reason_for_the_ratingT <- str_trim(exported$reason_for_the_rating, side = c("both", "left", "right"))
treats_customerT <- str_trim(exported$treats_customer, side = c("both", "left", "right"))
strickly_and_fairlyT <- str_trim(exported$strickly_and_fairly, side = c("both", "left", "right"))
provides_clear_andT <- str_trim(exported$provides_clear_and, side = c("both", "left", "right"))
addresses_queries_concernsT <- str_trim(exported$addresses_queries_concerns, side = c("both", "left", "right"))
demonstrates_willingnessT <- str_trim(exported$demonstrates_willingness, side = c("both", "left", "right"))
is_easy_to_contactT <- str_trim(exported$is_easy_to_contact, side = c("both", "left", "right"))
appears_neatT <- str_trim(exported$appears_neat, side = c("both", "left", "right"))
conveys_trust_andT <- str_trim(exported$conveys_trust_and, side = c("both", "left", "right"))
agreed_upon_deadlinesT <- str_trim(exported$agreed_upon_deadlines, side = c("both", "left", "right"))
contract_terms_andT <- str_trim(exported$contract_terms_and, side = c("both", "left", "right"))
purpose_deliverablesT <- str_trim(exported$purpose_deliverables, side = c("both", "left", "right"))
filing_of_complaintsT <- str_trim(exported$filing_of_complaints, side = c("both", "left", "right"))
complaints_are_resolvedT <- str_trim(exported$complaints_are_resolved, side = c("both", "left", "right"))
resolutions_to_complaintsT <- str_trim(exported$resolutions_to_complaints, side = c("both", "left", "right"))
files_records_areT <- str_trim(exported$files_records_are, side = c("both", "left", "right"))
easy_to_obtainT <- str_trim(exported$easy_to_obtain, side = c("both", "left", "right"))
clear_and_relevantT <- str_trim(exported$clear_and_relevant, side = c("both", "left", "right"))
is_available_andT <- str_trim(exported$is_available_and, side = c("both", "left", "right"))
contains_the_infoT <- str_trim(exported$contains_the_info, side = c("both", "left", "right"))
is_user_friendlyT <- str_trim(exported$is_user_friendly, side = c("both", "left", "right"))
signages_are_visibleT <- str_trim(exported$signages_are_visible, side = c("both", "left", "right"))
office_premises_are_cleanT <- str_trim(exported$office_premises_are_clean, side = c("both", "left", "right"))
office_premises_are_wellT <- str_trim(exported$office_premises_are_well, side = c("both", "left", "right"))
office_premises_are_safeT <- str_trim(exported$office_premises_are_safe, side = c("both", "left", "right"))
office_has_separateT <- str_trim(exported$office_has_separate, side = c("both", "left", "right"))
s_and_o_reasonT <- str_trim(exported$s_and_o_reason, side = c("both", "left", "right"))
s_and_o_suggestionsT <- str_trim(exported$s_and_o_suggestions, side = c("both", "left", "right"))
p_o_reasonT <- str_trim(exported$p_o_reason, side = c("both", "left", "right"))
p_o_suggestionsT <- str_trim(exported$p_o_suggestions, side = c("both", "left", "right"))
ch_and_rk_reasonT <- str_trim(exported$ch_and_rk_reason, side = c("both", "left", "right"))
ch_and_rk_suggestionsT <- str_trim(exported$ch_and_rk_suggestions, side = c("both", "left", "right"))
i_and_c_reasonT <- str_trim(exported$i_and_c_reason, side = c("both", "left", "right"))
i_and_c_suggestionsT <- str_trim(exported$i_and_c_suggestions, side = c("both", "left", "right"))
i_and_cw_reasonT <- str_trim(exported$i_and_cw_reason, side = c("both", "left", "right"))
i_and_cw_suggestionsT <- str_trim(exported$i_and_cw_suggestions, side = c("both", "left", "right"))
facilities_reasonT <- str_trim(exported$facilities_reason, side = c("both", "left", "right"))
facilities_suggestionsT <- str_trim(exported$facilities_suggestions, side = c("both", "left", "right"))
project_sites_with_or_without_ieT <- str_trim(exported$project_sites_with_or_without_ie, side = c("both", "left", "right"))
the_pnoc_ec_conducts_iec_campaigT <- str_trim(exported$the_pnoc_ec_conducts_iec_campaig, side = c("both", "left", "right"))
the_presentation_in_the_iec_mateT <- str_trim(exported$the_presentation_in_the_iec_mate, side = c("both", "left", "right"))
the_presenters_are_responsive_toT <- str_trim(exported$the_presenters_are_responsive_to, side = c("both", "left", "right"))
the_presenters_are_knowledgeableT <- str_trim(exported$the_presenters_are_knowledgeable, side = c("both", "left", "right"))
remarks_commentsT <- str_trim(exported$remarks_comments, side = c("both", "left", "right"))
suggestionsT <- str_trim(exported$suggestions, side = c("both", "left", "right"))
usefulness_of_the_iec_campaignT <- str_trim(exported$usefulness_of_the_iec_campaign, side = c("both", "left", "right"))
sites_with_or_without_pnoc_ec_spT <- str_trim(exported$sites_with_or_without_pnoc_ec_sp, side = c("both", "left", "right"))
karununganT <- str_trim(exported$karunungan, side = c("both", "left", "right"))
karunungan_ratingT <- str_trim(exported$karunungan_rating, side = c("both", "left", "right"))
karunungan_reasonT <- str_trim(exported$karunungan_reason, side = c("both", "left", "right"))
kalusugan_ratingT <- str_trim(exported$kalusugan_rating, side = c("both", "left", "right"))
kabuhayan_ratingT <- str_trim(exported$kabuhayan_rating, side = c("both", "left", "right"))
kabuhayan_reasonT <- str_trim(exported$kabuhayan_reason, side = c("both", "left", "right"))
kapaligiran_ratingT <- str_trim(exported$kapaligiran_rating, side = c("both", "left", "right"))
kapaligiran_reasonT <- str_trim(exported$kapaligiran_reason, side = c("both", "left", "right"))
which_spp_programT <- str_trim(exported$which_spp_program, side = c("both", "left", "right"))
where_do_you_most_often_get_infoT <- str_trim(exported$where_do_you_most_often_get_info, side = c("both", "left", "right"))
specify_if_othersT <- str_trim(exported$specify_if_others, side = c("both", "left", "right"))
suggestions_for_improvementT <- str_trim(exported$suggestions_for_improvement, side = c("both", "left", "right"))
have_you_encountered_problemsT <- str_trim(exported$have_you_encountered_problems, side = c("both", "left", "right"))
if_yes_please_specifyT <- str_trim(exported$if_yes_please_specify, side = c("both", "left", "right"))
have_you_already_visited_the_webT <- str_trim(exported$have_you_already_visited_the_web, side = c("both", "left", "right"))
have_you_been_to_the_pnoc_officeT <- str_trim(exported$have_you_been_to_the_pnoc_office, side = c("both", "left", "right"))

df = data.frame(pnocec_q_noT,respondent_nameT,respo_addressT,tel_noT,time_startT,time_endT,mobile_noT,interviewer_nameT,interviewer_idT,date_of_interviewT,time_of_interviewT,witnessed_validated_byT,witness_validation_dateT,edited_byT,date_of_editingT,quality_checked_byT,quality_check_dateT,data_encoded_byT,date_of_encodingT,screener_nameT,s1T,s2T,
                s3T,showcard_of_satisfaction_ratingT,reason_for_the_ratingT,
                # Staff and Organization
                treats_customerT,strickly_and_fairlyT,provides_clear_andT,addresses_queries_concernsT,
                demonstrates_willingnessT,is_easy_to_contactT,appears_neatT,conveys_trust_andT,
                # Partner Organization
                agreed_upon_deadlinesT,contract_terms_andT,purpose_deliverablesT,
                # Complaints Handling and Recordkeeping
                filing_of_complaintsT,complaints_are_resolvedT,resolutions_to_complaintsT,files_records_areT,
                # Information and Communication
                easy_to_obtainT,clear_and_relevantT,
                # Information and Communication (Website)
                is_available_andT,contains_the_infoT,is_user_friendlyT,
                # Facilities
                signages_are_visibleT,office_premises_are_cleanT,office_premises_are_wellT,office_premises_are_safeT,office_has_separateT,
                
                s_and_o_reasonT,s_and_o_suggestionsT,p_o_reasonT,p_o_suggestionsT,ch_and_rk_reasonT,
                ch_and_rk_suggestionsT,i_and_c_reasonT,i_and_c_suggestionsT,i_and_cw_reasonT,i_and_cw_suggestionsT,
                facilities_reasonT,facilities_suggestionsT,project_sites_with_or_without_ieT,
                the_pnoc_ec_conducts_iec_campaigT,the_presentation_in_the_iec_mateT,the_presenters_are_responsive_toT,
                the_presenters_are_knowledgeableT,remarks_commentsT,suggestionsT,usefulness_of_the_iec_campaignT,
                sites_with_or_without_pnoc_ec_spT,karunungan_ratingT,karunungan_reasonT,kalusugan_ratingT,
                kabuhayan_ratingT,kabuhayan_reasonT,kapaligiran_ratingT,kapaligiran_reasonT,which_spp_programT,
                where_do_you_most_often_get_infoT,specify_if_othersT,suggestions_for_improvementT,
                have_you_encountered_problemsT,if_yes_please_specifyT,have_you_already_visited_the_webT,
                have_you_been_to_the_pnoc_officeT)

S_and_O = data.frame(pnocec_q_noT,respondent_nameT,treats_customerT,strickly_and_fairlyT,provides_clear_andT,addresses_queries_concernsT,
                     demonstrates_willingnessT,is_easy_to_contactT,appears_neatT,conveys_trust_andT)

P_O = data.frame(pnocec_q_noT,respondent_nameT,agreed_upon_deadlinesT,contract_terms_andT,purpose_deliverablesT)

CH_and_RK = data.frame(pnocec_q_noT,respondent_nameT,filing_of_complaintsT,complaints_are_resolvedT,resolutions_to_complaintsT,files_records_areT)

I_and_C = data.frame(pnocec_q_noT,respondent_nameT,easy_to_obtainT,clear_and_relevantT)

I_and_CWeb = data.frame(pnocec_q_noT,respondent_nameT,is_available_andT,contains_the_infoT,is_user_friendlyT)

Facilities = data.frame(pnocec_q_noT,respondent_nameT,signages_are_visibleT,office_premises_are_cleanT,office_premises_are_wellT,office_premises_are_safeT,office_has_separateT)

# Examining the data
str(S_and_O)
summary(S_and_O)
View(S_and_O)

# Write df to csv file.
write.csv(df, file = "df.csv")


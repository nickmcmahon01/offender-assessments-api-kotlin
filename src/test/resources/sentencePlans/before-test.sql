SET REFERENTIAL_INTEGRITY FALSE;

-- Offender
INSERT INTO OFFENDER (OFFENDER_PK, ADDRESS_LAST_UPDATE_DATE, ADDRESS_LINE_1, ADDRESS_LINE_2, ADDRESS_LINE_3, ADDRESS_LINE_4, ADDRESS_LINE_5, ADDRESS_LINE_6, ADDRESS_POSTCODE, TELEPHONE_NUMBER, DATE_OF_BIRTH, TITLE_ELM, TITLE_CAT, FAMILY_NAME, NAME_SOUNDSLIKE, FORENAME_1, FORENAME_2, FORENAME_3, LIMITED_ACCESS_OFFENDER, PNC, CMS_PROB_NUMBER, CMS_PRIS_NUMBER, LEGACY_CMS_PROB_NUMBER, CRO_NUMBER, PRISON_NUMBER, MERGE_PNC_NUMBER, DATE_OF_DEATH, DATE_OF_DEPORTATION, OFFENDER_MANAGED_IND, PPO_IND, REMAND_IND, REVIEW_DATE, REVIEW_REMINDER_DATE, TERM_REMINDER_DATE, ETHNIC_CATEGORY_ELM, ETHNIC_CATEGORY_CAT, GENDER_ELM, GENDER_CAT, RISK_TO_OTHERS_ELM, RISK_TO_OTHERS_CAT, RISK_TO_SELF_ELM, RISK_TO_SELF_CAT, OFFENDER_HISTORIC_ELM, OFFENDER_HISTORIC_CAT, LOCAL_AUTHORITY_ELM, LOCAL_AUTHORITY_CAT, ORIGINATING_CMS_ELM, ORIGINATING_CMS_CAT, DECEASED_IND, NFA_IND, CUSTODY_IND, PSR_AREA, OWNING_PRISON_AREA, OWNING_PROBATION_AREA, PRIMARY_LOCATION_AREA, AWAITING_PROB_AREA, AWAITING_PRIS_AREA, PHYSICAL_LOCATION_OTHER, DELETED_DATE, MERGED_IND, CMS_MESSAGE, ICMSCLIREF, ICMSSUPREF, ICMSLINKREF, CMS_EVENT_NUMBER, POTENTIAL_DELETION_DATE, RETAINED_IND, RETAINED_REASON, LIFE_IND, RELEASE_POT_DELETION_DATE, RESTORE_PNC_IND, PHYSICAL_LOCATION, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER, DISCHARGE_CODE_CAT, DISCHARGE_CODE_ELM, HOST_CPA) VALUES
(100, null, null, null, null, null, null, null, null, null, TO_DATE('1992-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, 'SMITH', 'IF', 'SAM', 'SAMMY', 'SAMUEL', 'N', 'PNC100', 'XYZ100', 'NOMIS100', null, 'CRO123456', 'B100', null, null, null, 'N', null, 'N', null, null, null, null, null, '1', 'GENDER', null, null, null, null, 'CURRENT', 'HISTORIC_STATUS', null, null, null, null, 'N', 'N', 'N', null, null, 'YSW', 'YSW', null, null, null, null, 'N', null, null, null, null, null, null, 'N', null, 'N', null, 'N', 'YSW', null, null, '', TO_DATE('2018-08-31 08:19:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2018-05-16 16:12:40', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', null, null, null);

INSERT INTO OASYS_ASSESSMENT_GROUP (OASYS_ASSESSMENT_GROUP_PK, OFFENDER_PK, ASSESSMENT_DATE_CLOSED, HISTORIC_STATUS_ELM, CREATE_DATE, CREATE_USER, LASTUPD_USER)
VALUES (100, 100, null, 'OTHER', TO_DATE('2018-08-16 10:16:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', 'SYS'),
       (200, 100, null, 'CURRENT', TO_DATE('2018-10-16 10:16:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', 'SYS');

-- OASys set
INSERT INTO OASYS_SET (OASYS_SET_PK, ASSESSMENT_VOIDED_DATE, ASSESSOR_NAME, OASYS_SCORING_ALG_VERSION, CREATE_DATE,  DATE_COMPLETED, ASSESSMENT_TYPE_ELM, ASSESSMENT_STATUS_ELM, OASYS_ASSESSMENT_GROUP_PK, REF_ASS_VERSION_CODE, VERSION_NUMBER, ASSESSMENT_STATUS_CAT, CREATE_USER, LASTUPD_USER)
VALUES (100, null, 'Probation Test', 1, TO_DATE('2018-08-19 23:00:09', 'YYYY-MM-DD HH24:MI:SS'), null, 'LAYER_1', 'COMPLETE', 100, 'LAYER1', '1', 'ANY', 'ANY', 'ANY'),
       (200, TO_DATE('2018-06-20 23:00:09', 'YYYY-MM-DD HH24:MI:SS'), 'Probation Test', 1, TO_DATE('2018-05-21 23:00:09', 'YYYY-MM-DD HH24:MI:SS'), null, 'LAYER_3', 'COMPLETE', 200, 'LAYER3', '1', 'ANY', 'ANY', 'ANY'),
       (300, null, 'Probation Test', 2, TO_DATE('2018-05-22 23:00:09', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-06-21 23:00:09', 'YYYY-MM-DD HH24:MI:SS'), 'LAYER_1', 'OPEN', 200, 'LAYER1', '1', 'ANY', 'ANY', 'ANY');


-- OASys sections - oasys set 100
INSERT INTO OASYS_SECTION (OASYS_SECTION_PK, OASYS_SET_PK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, SECTION_STATUS_ELM, SECTION_STATUS_CAT, MISSING_NOTIONAL_ELM, MISSING_NOTIONAL_CAT, SECT_OGP_WEIGHTED_SCORE, SECT_OVP_WEIGHTED_SCORE, SECT_OTHER_WEIGHTED_SCORE, SECT_OVP_RAW_SCORE, SECT_OGP_RAW_SCORE, SECT_OTHER_RAW_SCORE, LOW_SCORE_NEED_ATTN_IND, QA_REVIEW_PK, CURRENTLY_HIDDEN_IND, SECTION_PAGE_VISIBILITY, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, LASTUPD_DATE, CREATE_USER, LASTUPD_USER, OASYS_BCS_PART_PK)
VALUES (8332405, 100, 'LAYER3', '1', 'ISP', 'INCOMPLETE', 'SECTION_STATUS', null, null, null, null, null, null, null, null, null, null, 'N', 0, null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', 'PROBATION1', null);


-- OASys Questions - ISP section only for sentence plans
INSERT INTO OASYS_QUESTION (OASYS_QUESTION_PK, ADDITIONAL_NOTE, OASYS_SECTION_PK, FREE_FORMAT_ANSWER, DISPLAY_SCORE, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE, DISCLOSED_IND, CURRENTLY_HIDDEN_IND, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(7690131, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.15', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690132, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.16', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690133, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.17.t', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690134, 'tset', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.19', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690135, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.25', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690136, null, 8332405, 'test', null, 'LAYER3', '1', 'ISP', 'IP.27', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690137, null, 8332405, 'test', null, 'LAYER3', '1', 'ISP', 'IP.36', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690138, null, 8332405, '10/12/2012', null, 'LAYER3', '1', 'ISP', 'IP.38', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690139, null, 8332405, 'test', null, 'LAYER3', '1', 'ISP', 'IP.39', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:21:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690113, null, 8332405, 'Probation Officer', null, 'LAYER3', '1', 'ISP', 'IP.20', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690114, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.17', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690115, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.21', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690116, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.33', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690117, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.37', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690118, null, 8332405, '13/06/2012', null, 'LAYER3', '1', 'ISP', 'IP.23', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690119, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.1', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690120, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP3', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690121, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.4', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690122, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.8', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690123, null, 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.9', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690124, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.2', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690125, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.5', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690126, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.6', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690127, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.7', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690128, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.10', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690129, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.11', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7690130, 'test', 8332405, null, null, 'LAYER3', '1', 'ISP', 'IP.12', 'N', 'N', null, null, '', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');


-- OASys Answers - ISP Section only for sentence plans
INSERT INTO OASYS_ANSWER (OASYS_ANSWER_PK, OASYS_QUESTION_PK, REF_ASS_VERSION_CODE, VERSION_NUMBER, REF_SECTION_CODE, REF_QUESTION_CODE, REF_ANSWER_CODE, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(7979202, 7690122, 'LAYER3', '1', 'ISP', 'IP.8', '110', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979203, 7690123, 'LAYER3', '1', 'ISP', 'IP.9', 'YES', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:13:34', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979197, 7690116, 'LAYER3', '1', 'ISP', 'IP.33', 'NO', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979196, 7690115, 'LAYER3', '1', 'ISP', 'IP.21', 'YES', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979201, 7690121, 'LAYER3', '1', 'ISP', 'IP.4', '1', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979198, 7690117, 'LAYER3', '1', 'ISP', 'IP.37', 'NO', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979199, 7690119, 'LAYER3', '1', 'ISP', 'IP.1', 'YES', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(7979200, 7690120, 'LAYER3', '1', 'ISP', 'IP3', '1', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');


-- Basic Sentence plans
INSERT INTO BASIC_SENTENCE_PLAN_OBJ (BASIC_SENT_PLAN_OBJ_PK, DISPLAY_SORT, PROBLEM_AREA_COMP_IND, INCLUDE_IN_PLAN_IND, OFFENCE_BEHAV_LINK_ELM, OFFENCE_BEHAV_LINK_CAT, OBJECTIVE_TEXT, MEASURE_TEXT, WHAT_WORK_TEXT, WHO_WILL_DO_WORK_TEXT, TIMESCALES_TEXT, OASYS_SET_PK, DATE_OPENED, DATE_COMPLETED, CF_LAST_BCS_INT, CF_ORIG_BCS_INT, SERVICE_LEVEL, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) values

-- Assessment 1
 (100, 1, 'Y', 'Y', 'ACCOMMODATION','UR', 'Find somewhere to live', 'Has found accommodation', 'Look for a hostel', 'OFFENDER', '2 weeks', 100, TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 1, 1, '', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
 (200, 2, 'Y', 'Y', 'DRUG_MISUSE','UR', 'Attend support group', 'Attended 10 sessions', 'Attend regular sessions', 'OFFENDER', '20 weeks', 100, TO_DATE('2016-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, '', TO_DATE('2016-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
 (300, 3, 'N', 'N', 'ATTITUDES','UR', 'Attend support group', 'Not in plan objective', 'Not in plan', 'OFFENDER', '1 year', 100, TO_DATE('2016-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, '', TO_DATE('2016-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),

--Assessment 2
 (400, 1, 'Y', 'Y', 'ACCOMMODATION','UR', 'Find somewhere to live', 'Has found accomodation', 'Look for a hostel', 'OFFENDER', '2 weeks', 300, TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), null, 1, 1, 1, '', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
 (600, 3, 'N', 'Y', 'ATTITUDES','UR', 'Attend support group', 'Not in plan objective', 'Not in plan', 'OFFENDER', '1 year', 300, TO_DATE('2016-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, '', TO_DATE('2016-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2018-07-26 10:39:04', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');


--Full sentence plans

-- Objectives
INSERT INTO SSP_OBJECTIVES_IN_SET (SSP_OBJECTIVES_IN_SET_PK, COPIED_FORWARD_INDICATOR, HOW_PROGRESS_MEASURED, DISPLAY_SORT, OBJECTIVE_TYPE_ELM, OBJECTIVE_TYPE_CAT, LAST_UPDATE_DATE, OASYS_SET_PK, MIG_GUID, MIG_ID, CF_LAST_ASSMT_OBJ, CF_ORIG_ASSMT_OBJ, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(317298, 'N', 'test', 3, 'FUTURE', 'OBJECTIVE_TYPE', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 100, null, null, null, null, 'C957E6BE6469F43944A346FE1F4F5D1D', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(317296, 'Y', 'tEST', 1, 'CURRENT', 'OBJECTIVE_TYPE', TO_DATE('2020-03-06 09:19:11', 'YYYY-MM-DD HH24:MI:SS'), 100, null, null, 61075, 61075, '8023294A21AE7E75080C11A1778CC345', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 07:28:18', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(317297, 'N', 'test', 2, 'CURRENT', 'OBJECTIVE_TYPE', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), 100, null, null, null, null, '13B8E5D567F00C1CD0CA80D5A1985333', TO_DATE('2020-03-06 09:17:11', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

INSERT INTO SSP_OBJECTIVE (SSP_OBJECTIVE_PK, OBJECTIVE_DESC, SSP_OBJECTIVES_IN_SET_PK, OBJECTIVE_CODE, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(312288, null, 317296, '500', null, null, '', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:51', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(312289, 'test', 317297, '100', null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(312290, 'test', 317298, '10300', null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

INSERT INTO SSP_OBJECTIVE_MEASURE (SSP_OBJECTIVE_MEASURE_PK, OBJECTIVE_STATUS_COMMENTS, OBJECTIVE_STATUS_ELM, OBJECTIVE_STATUS_CAT, SSP_OBJECTIVES_IN_SET_PK, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(317276, null, 'RII', 'OBJECTIVE_STATUS_CODE', 317296, null, null, '', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(317277, 'testing 123', 'RII', 'OBJECTIVE_STATUS_CODE', 317297, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 08:00:40', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(317278, 'test', 'R', 'OBJECTIVE_STATUS_CODE', 317298, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

-- Interventions

INSERT INTO SSP_INTERVENTION_IN_SET (SSP_INTERVENTION_IN_SET_PK, COPIED_FORWARD_INDICATOR, INTERVENTION_COMMENT, TIMESCALE_FOR_INT_ELM, TIMESCALE_FOR_INT_CAT, COPIED_FROM_SSP_INT_IN_SET, INTERVENTION_ELM, INTERVENTION_CAT, MIG_GUID, MIG_ID, CF_LAST_ASSMT_INT, CF_ORIG_ASSMT_INT, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(86941064, 'Y', null, 'ONE_MONTH', 'TIMESCALE', null, 'IV1', 'INTERVENTION', null, null, 66079, 66079, '', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(86942060, 'N', 'test1', 'SIXTEEN_WEEKS', 'TIMESCALE', null, 'V1', 'INTERVENTION', null, null, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 07:59:24', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(86943056, 'N', 'test', 'ONE_WEEK', 'TIMESCALE', null, 'VII7', 'INTERVENTION', null, null, null, null, '', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(86944052, 'N', 'test', 'ONE_MONTH', 'TIMESCALE', null, 'IV6', 'INTERVENTION', null, null, null, null, '', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(86945048, 'N', 'test', 'ONE_WEEK', 'TIMESCALE', null, 'VI12', 'INTERVENTION', null, null, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(86946044, 'Y', null, 'ONE_MONTH', 'TIMESCALE', 86941064, 'IV1', 'INTERVENTION', null, null, null, null, '', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

INSERT INTO SSP_OBJ_INTERVENE_PIVOT (SSP_OBJ_INTERVENE_PIVOT_PK, SSP_OBJECTIVES_IN_SET_PK, SSP_INTERVENTION_IN_SET_PK, DELETED_IND, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(329293, 317296, 86941064, 'N', null, null, '', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(329294, 317297, 86942060, 'N', null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(329295, 317297, 86943056, 'N', null, null, '', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(329296, 317297, 86944052, 'N', null, null, '', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(329297, 317298, 86945048, 'N', null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(329298, 317298, 86946044, 'N', null, null, '', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

INSERT INTO SSP_INTERVENTION_MEASURE (SSP_INTERVENTION_MEASURE_PK, INTERVENE_MEAS_CODE_ELM, INTERVENE_MEAS_CODE_CAT, SSP_INTERVENTION_IN_SET_PK, INTERVENE_MEAS_COMMENT, LAST_UPDATE_DATE, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(321318, 'RII', 'INTERVENTION_MEASUREMENT_CODE', 86941064, null, TO_DATE('2020-03-06 09:19:11', 'YYYY-MM-DD HH24:MI:SS'), null, null, '', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:19:11', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(321319, 'RII', 'INTERVENTION_MEASUREMENT_CODE', 86942060, 'test5', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(321320, 'RII', 'INTERVENTION_MEASUREMENT_CODE', 86943056, 'test6', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), null, null, '', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(321321, 'R', 'INTERVENTION_MEASUREMENT_CODE', 86944052, 'test7', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), null, null, '', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 08:03:36', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(321322, 'RII', 'INTERVENTION_MEASUREMENT_CODE', 86945048, 'test', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(321323, 'RII', 'INTERVENTION_MEASUREMENT_CODE', 86946044, null, TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), null, null, '', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

INSERT INTO SSP_WHO_DO_WORK_PIVOT (SSP_WHO_DO_WORK_PIVOT_PK, WHO_WORK_OBJ_ELM, WHO_WORK_OBJ_CAT, COMMENTS, SSP_INTERVENTION_IN_SET_PK, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(327394, 'IX2', '_OBJECTIVE_CODE', null, 86941064, null, null, '', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327395, 'IX3', '_OBJECTIVE_CODE', 'test2', 86942060, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 07:59:24', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327396, 'IX1', '_OBJECTIVE_CODE', 'test3', 86942060, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 07:59:24', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327397, 'IX2', '_OBJECTIVE_CODE', 'test4', 86942060, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-11 07:59:24', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327398, 'IX1', '_OBJECTIVE_CODE', 'test', 86943056, null, null, '', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327399, 'IX2', '_OBJECTIVE_CODE', 'test', 86943056, null, null, '', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327400, 'IX3', '_OBJECTIVE_CODE', 'test', 86943056, null, null, '', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:03', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327401, 'IX1', '_OBJECTIVE_CODE', 'test', 86944052, null, null, '', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327402, 'IX2', '_OBJECTIVE_CODE', 'test', 86944052, null, null, '', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327403, 'IX7', '_OBJECTIVE_CODE', 'test', 86944052, null, null, '', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:18:26', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327404, 'IX2', '_OBJECTIVE_CODE', 'test', 86945048, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(327405, 'IX2', '_OBJECTIVE_CODE', null, 86946044, null, null, '', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:47', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');

--needs
INSERT INTO SSP_CRIM_NEED_OBJ_PIVOT (SSP_CRIM_NEED_OBJ_PIVOT_PK, CRIMINOGENIC_NEED_ELM, CRIMINOGENIC_NEED_CAT, DISPLAY_SORT, SSP_OBJECTIVES_IN_SET_PK, MIG_GUID, MIG_ID, CHECKSUM, CREATE_DATE, CREATE_USER, LASTUPD_DATE, LASTUPD_USER) VALUES
(314379, 'I2A', 'CRIMINOGENIC_NEED', 1, 317296, null, null, '', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:12:52', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314380, 'I5A', 'CRIMINOGENIC_NEED', 1, 317297, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314381, 'IHD', 'CRIMINOGENIC_NEED', 2, 317297, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314382, 'IHA', 'CRIMINOGENIC_NEED', 3, 317297, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314383, 'IHC', 'CRIMINOGENIC_NEED', 4, 317297, null, null, '', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:17:12', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314384, 'IHB', 'CRIMINOGENIC_NEED', 1, 317298, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314385, 'I6A', 'CRIMINOGENIC_NEED', 2, 317298, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314386, 'IHH', 'CRIMINOGENIC_NEED', 3, 317298, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1'),
(314387, 'I9A', 'CRIMINOGENIC_NEED', 4, 317298, null, null, '', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1', TO_DATE('2020-03-06 09:20:28', 'YYYY-MM-DD HH24:MI:SS'), 'PROBATION1');
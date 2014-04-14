
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";

--
-- Table structure for table 'phd_error_messages'
--

DROP TABLE IF EXISTS phd_error_messages;
CREATE TABLE IF NOT EXISTS phd_error_messages (
  errorMessageId int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique message ID. Used only to identify the record in the table',
  errorStatus int(10) unsigned NOT NULL COMMENT 'HTTP error response status value',
  messageVariation int(10) unsigned NOT NULL COMMENT 'Variation of message. Supports multiple error messages for a single errorStatus value to provide more descriptive messages in specific situations.',
  messageLanguage char(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language code of the message text language.',
  messageText varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Message text to return to the caller',
  PRIMARY KEY (errorMessageId),
  KEY errorStatus (errorStatus)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Used to store error message text for error response buffers';

--
-- Data for table 'phd_error_messages'
--

INSERT INTO phd_error_messages (`errorStatus`, messageVariation, `messageLanguage`, messageText) VALUES
(400, 0, 'en-US', 'Bad request'),
(401, 0, 'en-US', 'Not authorized'),
(404, 0, 'en-US', 'Record not found'),
(405, 0, 'en-US', 'HTTP method not allowed'),
(500, 0, 'en-US', 'Server error'),
(500, 1, 'en-US', 'Error writing record to database'),
(501, 0, 'en-US', 'Command not implemented'),
(501, 1, 'en-US', 'Command not recognized');

-- --------------------------------------------------------

--
-- Table structure for table 'phd_debug'
--

DROP TABLE IF EXISTS phd_debug;
CREATE TABLE IF NOT EXISTS phd_debug (
  debugId bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique record ID.',
  moduleName varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Module to which this setting applies.',
  methodName varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Method to which this setting applies.',
  returnDbgData tinyint(1) NOT NULL DEFAULT '0' COMMENT 'When TRUE, the specified module and method should return a debug data structure in the repsonse.',
  returnSqlData tinyint(1) NOT NULL DEFAULT '0' COMMENT 'When TRUE, the specified module and method should return an SQL ddata structure in the repsonse.',
  PRIMARY KEY (debugId),
  UNIQUE KEY debugId (debugId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Used to store the debug message configuration of the service.';

-- --------------------------------------------------------

--
-- Table structure for table 'phd_log_gratuity'
--

DROP TABLE IF EXISTS phd_log_gratuity;
CREATE TABLE IF NOT EXISTS phd_log_gratuity (
  gratuityLogId bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique record ID.',
  studyId bigint(20) unsigned NOT NULL COMMENT 'ID of study to which this gratuity entry belongs.',
  periodName varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Name of study period in the study identified by studyId to which this entry belongs.',
  email varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email address entered by the participant.',
  comments varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Comments entered by the participant.',
  dateCreated datetime NOT NULL COMMENT 'The date the record was created in server local time.',
  dateModified timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date the record was updated in server local time.',
  PRIMARY KEY (gratuityLogId),
  UNIQUE KEY gratuityLogId (gratuityLogId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Stores participant information used for gratuity fulfillment.';

-- --------------------------------------------------------

--
-- Table structure for table 'phd_log_event'
--

DROP TABLE IF EXISTS phd_log_event;
CREATE TABLE IF NOT EXISTS phd_log_event (
  logEventId bigint(20) unsigned NOT NULL  AUTO_INCREMENT COMMENT 'Unique record ID.',
  recordType enum('open','transition')  COLLATE utf8_unicode_ci  NOT NULL   COMMENT 'The type of log record. Possible values are: "open" - records page loads; "transition" - records navigation activity.',
  surveySessionId varchar(255)  COLLATE utf8_unicode_ci  NOT NULL   COMMENT 'The participant session in which the activity occurred',
  stepIndex int(10) unsigned NOT NULL   COMMENT 'The index of the protocol step in which the activity ocurred. (page number of survey)',
  responseTime bigint(20) unsigned  DEFAULT NULL COMMENT 'The response time ',
  imageY int(10) unsigned  DEFAULT NULL COMMENT 'X-coord of click',
  imageX int(10) unsigned  DEFAULT NULL COMMENT 'Y-coord of click',
  imageUrl varchar(1024)  COLLATE utf8_unicode_ci   DEFAULT NULL COMMENT 'Image URL clicked',
  dateCreated datetime  NOT NULL   COMMENT 'The timestamp written when the record was created.',
  dateModified timestamp  NOT NULL  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT 'Time read from server that the activity took place. Stored in server time zone.',
  PRIMARY KEY (logEventId),
  UNIQUE KEY logEventId (logEventId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Stores events sent by the site being tested.';

--
-- Table structure for table 'phd_log_session'
--

DROP TABLE IF EXISTS phd_log_session;
CREATE TABLE IF NOT EXISTS phd_log_session (
  sessionId bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique record and study session ID',
  studyId bigint(20) unsigned NOT NULL  COMMENT 'ID of study that defined this participant session',
  stepId int(10) unsigned NOT NULL  COMMENT 'The task step in this session. Task 0 = the session overall, Task 1-n = a task step in the study.',
  surveySessionId varchar(255)  COLLATE utf8_unicode_ci  NOT NULL   COMMENT 'The participant session ID',
  startTime datetime  NOT NULL   COMMENT 'The time, in server local time, that this task/variation began',
  endTime datetime   DEFAULT NULL COMMENT 'The time, in server local time, that this task/variation ended',
  variationId int(10) unsigned NOT NULL  COMMENT 'The variation selected for this session or task',
  questionSeqMask bigint(20) unsigned  DEFAULT NULL COMMENT 'The question sequence to use for this participant where bit 1 = task 1, etc. and 0=no-answer question 1 = answerable question',
  questionSeqStep int(10) unsigned NOT NULL  COMMENT 'The current task in the sequence',
  dateCreated datetime  NOT NULL  COMMENT 'The date the record was created in server local time.',
  dateModified timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT 'The date the record was last modified in server local time.',
  PRIMARY KEY (sessionId),
  UNIQUE KEY sessionId (sessionId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Stores data about a participants progress through a session.';

--
-- Table structure for table 'phd_study_step_config'
--

DROP TABLE IF EXISTS phd_study_step_config;
CREATE TABLE IF NOT EXISTS phd_study_step_config (
  studyStepConfigId bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique record ID',
  studyId bigint(20) unsigned NOT NULL DEFAULT '0'  COMMENT 'ID of study that defined this session',
  studyStepId bigint(20) unsigned NOT NULL DEFAULT '0'  COMMENT 'ID of the study step configuration that this record references',
  stepIndex int(10) unsigned NOT NULL DEFAULT '0'  COMMENT 'Step sequence',
  stepQuestion0Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'The full question that is not answered by the page, formatted as HTML',
  stepQuestion1Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'The full question that is answered by the page, formatted as HTML',
  stepPrompt0Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'The prompt for the question that is not answered by the page, formatted as HTML',
  stepPrompt1Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'The prompt for the question that is answered by the page, formatted as HTML',
  pageVar0Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 0 - page as HTML',
  pageImgVar0Url varchar(1024)  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 0 - page as image',
  pageVar1Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 1 - page as HTML',
  pageImgVar1Url varchar(1024)  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 1 - page as image',
  pageVar2Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 2 - page as HTML',
  pageImgVar2Url varchar(1024)  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 2 - page as image',
  pageVar3Html longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 3 - page as HTML',
  pageImgVar3Url varchar(1024)  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 3 - page as image',
  dateCreated datetime  NOT NULL  COMMENT 'The date the record was created in server local time.',
  dateModified timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT 'The date the record was last updated in server local time.',
  PRIMARY KEY (studyStepConfigId),
  UNIQUE KEY studyStepConfigId (studyStepConfigId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Stores data about a participants progress through a session.';


--
-- Table structure for table 'phd_session_step_info'
--

DROP TABLE IF EXISTS phd_session_step_info;
CREATE TABLE IF NOT EXISTS phd_session_step_info (.
  sessionStepInfoId bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique record ID',
  sessionId bigint(20) unsigned NOT NULL  COMMENT 'Unique record and study session ID',
  studyId bigint(20) unsigned NOT NULL DEFAULT '0'  COMMENT 'ID of study that defined this session',
  studyStepId bigint(20) unsigned NOT NULL DEFAULT '0'  COMMENT 'ID of the study step configuration that this record references',
  surveySessionId varchar(255)  COLLATE utf8_unicode_ci  NOT NULL   COMMENT 'The participant session ID',
  stepQuestionHtml longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'The full question that is not answered by the page, formatted as HTML',
  stepPromptHtml longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'The prompt for the question that is not answered by the page, formatted as HTML',
  pageHtml longtext  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 0 - page as HTML',
  pageImg varchar(1024)  COLLATE utf8_unicode_ci   DEFAULT NULL  COMMENT 'Variation 0 - page as image',
  startTime datetime  NOT NULL   COMMENT 'The time, in server local time, that this task/variation began',
  endTime datetime   DEFAULT NULL COMMENT 'The time, in server local time, that this task/variation ended',
  dateCreated datetime  NOT NULL  COMMENT 'The date the record was created in server local time.',
  dateModified timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT 'The date the record was last updated in server local time.',
  PRIMARY KEY (sessionStepInfoId),
  UNIQUE KEY sessionStepInfoId (sessionStepInfoId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT 'Stores data about a single step in a participants session.';
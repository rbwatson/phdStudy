
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


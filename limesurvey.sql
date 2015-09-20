-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2015 at 06:42 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `limesurvey`
--

-- --------------------------------------------------------

--
-- Table structure for table `lime_answers`
--

CREATE TABLE IF NOT EXISTS `lime_answers` (
  `qid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  `assessment_value` int(11) NOT NULL DEFAULT '0',
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `scale_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_assessments`
--

CREATE TABLE IF NOT EXISTS `lime_assessments` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `scope` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gid` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `minimum` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `maximum` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_conditions`
--

CREATE TABLE IF NOT EXISTS `lime_conditions` (
  `cid` int(11) NOT NULL,
  `qid` int(11) NOT NULL DEFAULT '0',
  `cqid` int(11) NOT NULL DEFAULT '0',
  `cfieldname` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scenario` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_defaultvalues`
--

CREATE TABLE IF NOT EXISTS `lime_defaultvalues` (
  `qid` int(11) NOT NULL DEFAULT '0',
  `scale_id` int(11) NOT NULL DEFAULT '0',
  `sqid` int(11) NOT NULL DEFAULT '0',
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `specialtype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defaultvalue` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_expression_errors`
--

CREATE TABLE IF NOT EXISTS `lime_expression_errors` (
  `id` int(11) NOT NULL,
  `errortime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `gseq` int(11) DEFAULT NULL,
  `qseq` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eqn` text COLLATE utf8_unicode_ci,
  `prettyprint` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_failed_login_attempts`
--

CREATE TABLE IF NOT EXISTS `lime_failed_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_attempt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `number_attempts` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_groups`
--

CREATE TABLE IF NOT EXISTS `lime_groups` (
  `gid` int(11) NOT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_order` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `randomization_group` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grelevance` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_labels`
--

CREATE TABLE IF NOT EXISTS `lime_labels` (
  `lid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `assessment_value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_labelsets`
--

CREATE TABLE IF NOT EXISTS `lime_labelsets` (
  `lid` int(11) NOT NULL,
  `label_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `languages` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'en'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_participants`
--

CREATE TABLE IF NOT EXISTS `lime_participants` (
  `participant_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blacklisted` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `owner_uid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_participant_attribute`
--

CREATE TABLE IF NOT EXISTS `lime_participant_attribute` (
  `participant_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_participant_attribute_names`
--

CREATE TABLE IF NOT EXISTS `lime_participant_attribute_names` (
  `attribute_id` int(11) NOT NULL,
  `attribute_type` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `defaultname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `visible` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_participant_attribute_names_lang`
--

CREATE TABLE IF NOT EXISTS `lime_participant_attribute_names_lang` (
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_participant_attribute_values`
--

CREATE TABLE IF NOT EXISTS `lime_participant_attribute_values` (
  `value_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_participant_shares`
--

CREATE TABLE IF NOT EXISTS `lime_participant_shares` (
  `participant_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `share_uid` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `can_edit` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_permissions`
--

CREATE TABLE IF NOT EXISTS `lime_permissions` (
  `id` int(11) NOT NULL,
  `entity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `permission` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_p` int(11) NOT NULL DEFAULT '0',
  `read_p` int(11) NOT NULL DEFAULT '0',
  `update_p` int(11) NOT NULL DEFAULT '0',
  `delete_p` int(11) NOT NULL DEFAULT '0',
  `import_p` int(11) NOT NULL DEFAULT '0',
  `export_p` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lime_permissions`
--

INSERT INTO `lime_permissions` (`id`, `entity`, `entity_id`, `uid`, `permission`, `create_p`, `read_p`, `update_p`, `delete_p`, `import_p`, `export_p`) VALUES
(1, 'global', 0, 1, 'superadmin', 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lime_plugins`
--

CREATE TABLE IF NOT EXISTS `lime_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lime_plugins`
--

INSERT INTO `lime_plugins` (`id`, `name`, `active`) VALUES
(1, 'Authdb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lime_plugin_settings`
--

CREATE TABLE IF NOT EXISTS `lime_plugin_settings` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_questions`
--

CREATE TABLE IF NOT EXISTS `lime_questions` (
  `qid` int(11) NOT NULL,
  `parent_qid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'T',
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `preg` text COLLATE utf8_unicode_ci,
  `help` text COLLATE utf8_unicode_ci,
  `other` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `mandatory` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_order` int(11) NOT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `scale_id` int(11) NOT NULL DEFAULT '0',
  `same_default` int(11) NOT NULL DEFAULT '0' COMMENT 'Saves if user set to use the same default value across languages in default options dialog',
  `relevance` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_question_attributes`
--

CREATE TABLE IF NOT EXISTS `lime_question_attributes` (
  `qaid` int(11) NOT NULL,
  `qid` int(11) NOT NULL DEFAULT '0',
  `attribute` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_quota`
--

CREATE TABLE IF NOT EXISTS `lime_quota` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qlimit` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `autoload_url` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_quota_languagesettings`
--

CREATE TABLE IF NOT EXISTS `lime_quota_languagesettings` (
  `quotals_id` int(11) NOT NULL,
  `quotals_quota_id` int(11) NOT NULL DEFAULT '0',
  `quotals_language` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `quotals_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotals_message` text COLLATE utf8_unicode_ci NOT NULL,
  `quotals_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotals_urldescrip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_quota_members`
--

CREATE TABLE IF NOT EXISTS `lime_quota_members` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `code` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_saved_control`
--

CREATE TABLE IF NOT EXISTS `lime_saved_control` (
  `scid` int(11) NOT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `srid` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci NOT NULL,
  `access_code` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `saved_thisstep` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `saved_date` datetime NOT NULL,
  `refurl` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_sessions`
--

CREATE TABLE IF NOT EXISTS `lime_sessions` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_settings_global`
--

CREATE TABLE IF NOT EXISTS `lime_settings_global` (
  `stg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stg_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lime_settings_global`
--

INSERT INTO `lime_settings_global` (`stg_name`, `stg_value`) VALUES
('DBVersion', '184'),
('SessionName', '|gM*GwU[4gm_pAL(=;53$_<r")HJc\\lg)v1-\\!gK<Q7%TRrgB\\Bw3ywE$$;PA!^+'),
('sitename', 'LimeSurvey'),
('siteadminname', 'Administrator'),
('siteadminemail', 'your-email@example.net'),
('siteadminbounce', 'your-email@example.net'),
('defaultlang', 'en'),
('updateversions', 'false'),
('updateavailable', '0'),
('updatelastcheck', '2015-09-20 18:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `lime_surveys`
--

CREATE TABLE IF NOT EXISTS `lime_surveys` (
  `sid` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `expires` datetime DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `adminemail` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anonymized` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `faxto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `savetimings` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'default',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_languages` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datestamp` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `usecookie` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `allowregister` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `allowsave` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `autonumber_start` int(11) NOT NULL DEFAULT '0',
  `autoredirect` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `allowprev` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `printanswers` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ipaddr` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `refurl` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `datecreated` date DEFAULT NULL,
  `publicstatistics` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `publicgraphs` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `listpublic` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `htmlemail` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `sendconfirmation` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `tokenanswerspersistence` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `assessments` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `usecaptcha` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `usetokens` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `bounce_email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributedescriptions` text COLLATE utf8_unicode_ci,
  `emailresponseto` text COLLATE utf8_unicode_ci,
  `emailnotificationto` text COLLATE utf8_unicode_ci,
  `tokenlength` int(11) NOT NULL DEFAULT '15',
  `showxquestions` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `showgroupinfo` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'B',
  `shownoanswer` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `showqnumcode` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'X',
  `bouncetime` int(11) DEFAULT NULL,
  `bounceprocessing` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `bounceaccounttype` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bounceaccounthost` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bounceaccountpass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bounceaccountencryption` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bounceaccountuser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showwelcome` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `showprogress` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `questionindex` int(11) NOT NULL DEFAULT '0',
  `navigationdelay` int(11) NOT NULL DEFAULT '0',
  `nokeyboard` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `alloweditaftercompletion` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `googleanalyticsstyle` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleanalyticsapikey` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_surveys_languagesettings`
--

CREATE TABLE IF NOT EXISTS `lime_surveys_languagesettings` (
  `surveyls_survey_id` int(11) NOT NULL,
  `surveyls_language` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `surveyls_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `surveyls_description` text COLLATE utf8_unicode_ci,
  `surveyls_welcometext` text COLLATE utf8_unicode_ci,
  `surveyls_endtext` text COLLATE utf8_unicode_ci,
  `surveyls_url` text COLLATE utf8_unicode_ci,
  `surveyls_urldescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyls_email_invite_subj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyls_email_invite` text COLLATE utf8_unicode_ci,
  `surveyls_email_remind_subj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyls_email_remind` text COLLATE utf8_unicode_ci,
  `surveyls_email_register_subj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyls_email_register` text COLLATE utf8_unicode_ci,
  `surveyls_email_confirm_subj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyls_email_confirm` text COLLATE utf8_unicode_ci,
  `surveyls_dateformat` int(11) NOT NULL DEFAULT '1',
  `surveyls_attributecaptions` text COLLATE utf8_unicode_ci,
  `email_admin_notification_subj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_admin_notification` text COLLATE utf8_unicode_ci,
  `email_admin_responses_subj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_admin_responses` text COLLATE utf8_unicode_ci,
  `surveyls_numberformat` int(11) NOT NULL DEFAULT '0',
  `attachments` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_survey_links`
--

CREATE TABLE IF NOT EXISTS `lime_survey_links` (
  `participant_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_invited` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_survey_url_parameters`
--

CREATE TABLE IF NOT EXISTS `lime_survey_url_parameters` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `parameter` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `targetqid` int(11) DEFAULT NULL,
  `targetsqid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_templates`
--

CREATE TABLE IF NOT EXISTS `lime_templates` (
  `folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_users`
--

CREATE TABLE IF NOT EXISTS `lime_users` (
  `uid` int(11) NOT NULL,
  `users_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` blob NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmleditormode` varchar(7) COLLATE utf8_unicode_ci DEFAULT 'default',
  `templateeditormode` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `questionselectormode` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `one_time_pw` blob,
  `dateformat` int(11) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lime_users`
--

INSERT INTO `lime_users` (`uid`, `users_name`, `password`, `full_name`, `parent_id`, `lang`, `email`, `htmleditormode`, `templateeditormode`, `questionselectormode`, `one_time_pw`, `dateformat`, `created`, `modified`) VALUES
(1, 'admin', 0x35653838343839386461323830343731353164306535366638646336323932373733363033643064366161626264643632613131656637323164313534326438, 'Administrator', 0, 'en', 'your-email@example.net', 'default', 'default', 'default', NULL, 1, '2015-09-20 23:23:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lime_user_groups`
--

CREATE TABLE IF NOT EXISTS `lime_user_groups` (
  `ugid` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lime_user_in_groups`
--

CREATE TABLE IF NOT EXISTS `lime_user_in_groups` (
  `ugid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lime_answers`
--
ALTER TABLE `lime_answers`
  ADD PRIMARY KEY (`qid`,`code`,`language`,`scale_id`), ADD KEY `answers_idx2` (`sortorder`);

--
-- Indexes for table `lime_assessments`
--
ALTER TABLE `lime_assessments`
  ADD PRIMARY KEY (`id`,`language`), ADD KEY `assessments_idx2` (`sid`), ADD KEY `assessments_idx3` (`gid`);

--
-- Indexes for table `lime_conditions`
--
ALTER TABLE `lime_conditions`
  ADD PRIMARY KEY (`cid`), ADD KEY `conditions_idx2` (`qid`), ADD KEY `conditions_idx3` (`cqid`);

--
-- Indexes for table `lime_defaultvalues`
--
ALTER TABLE `lime_defaultvalues`
  ADD PRIMARY KEY (`qid`,`specialtype`,`language`,`scale_id`,`sqid`);

--
-- Indexes for table `lime_expression_errors`
--
ALTER TABLE `lime_expression_errors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lime_failed_login_attempts`
--
ALTER TABLE `lime_failed_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lime_groups`
--
ALTER TABLE `lime_groups`
  ADD PRIMARY KEY (`gid`,`language`), ADD KEY `groups_idx2` (`sid`);

--
-- Indexes for table `lime_labels`
--
ALTER TABLE `lime_labels`
  ADD PRIMARY KEY (`lid`,`sortorder`,`language`), ADD KEY `labels_code_idx` (`code`);

--
-- Indexes for table `lime_labelsets`
--
ALTER TABLE `lime_labelsets`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `lime_participants`
--
ALTER TABLE `lime_participants`
  ADD PRIMARY KEY (`participant_id`);

--
-- Indexes for table `lime_participant_attribute`
--
ALTER TABLE `lime_participant_attribute`
  ADD PRIMARY KEY (`participant_id`,`attribute_id`);

--
-- Indexes for table `lime_participant_attribute_names`
--
ALTER TABLE `lime_participant_attribute_names`
  ADD PRIMARY KEY (`attribute_id`,`attribute_type`);

--
-- Indexes for table `lime_participant_attribute_names_lang`
--
ALTER TABLE `lime_participant_attribute_names_lang`
  ADD PRIMARY KEY (`attribute_id`,`lang`);

--
-- Indexes for table `lime_participant_attribute_values`
--
ALTER TABLE `lime_participant_attribute_values`
  ADD PRIMARY KEY (`value_id`);

--
-- Indexes for table `lime_participant_shares`
--
ALTER TABLE `lime_participant_shares`
  ADD PRIMARY KEY (`participant_id`,`share_uid`);

--
-- Indexes for table `lime_permissions`
--
ALTER TABLE `lime_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idxPermissions` (`entity_id`,`entity`,`permission`,`uid`);

--
-- Indexes for table `lime_plugins`
--
ALTER TABLE `lime_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lime_plugin_settings`
--
ALTER TABLE `lime_plugin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lime_questions`
--
ALTER TABLE `lime_questions`
  ADD PRIMARY KEY (`qid`,`language`), ADD KEY `questions_idx2` (`sid`), ADD KEY `questions_idx3` (`gid`), ADD KEY `questions_idx4` (`type`), ADD KEY `parent_qid_idx` (`parent_qid`);

--
-- Indexes for table `lime_question_attributes`
--
ALTER TABLE `lime_question_attributes`
  ADD PRIMARY KEY (`qaid`), ADD KEY `question_attributes_idx2` (`qid`), ADD KEY `question_attributes_idx3` (`attribute`);

--
-- Indexes for table `lime_quota`
--
ALTER TABLE `lime_quota`
  ADD PRIMARY KEY (`id`), ADD KEY `quota_idx2` (`sid`);

--
-- Indexes for table `lime_quota_languagesettings`
--
ALTER TABLE `lime_quota_languagesettings`
  ADD PRIMARY KEY (`quotals_id`);

--
-- Indexes for table `lime_quota_members`
--
ALTER TABLE `lime_quota_members`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sid` (`sid`,`qid`,`quota_id`,`code`);

--
-- Indexes for table `lime_saved_control`
--
ALTER TABLE `lime_saved_control`
  ADD PRIMARY KEY (`scid`), ADD KEY `saved_control_idx2` (`sid`);

--
-- Indexes for table `lime_sessions`
--
ALTER TABLE `lime_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lime_settings_global`
--
ALTER TABLE `lime_settings_global`
  ADD PRIMARY KEY (`stg_name`);

--
-- Indexes for table `lime_surveys`
--
ALTER TABLE `lime_surveys`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `lime_surveys_languagesettings`
--
ALTER TABLE `lime_surveys_languagesettings`
  ADD PRIMARY KEY (`surveyls_survey_id`,`surveyls_language`);

--
-- Indexes for table `lime_survey_links`
--
ALTER TABLE `lime_survey_links`
  ADD PRIMARY KEY (`participant_id`,`token_id`,`survey_id`);

--
-- Indexes for table `lime_survey_url_parameters`
--
ALTER TABLE `lime_survey_url_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lime_templates`
--
ALTER TABLE `lime_templates`
  ADD PRIMARY KEY (`folder`);

--
-- Indexes for table `lime_users`
--
ALTER TABLE `lime_users`
  ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `users_name` (`users_name`);

--
-- Indexes for table `lime_user_groups`
--
ALTER TABLE `lime_user_groups`
  ADD PRIMARY KEY (`ugid`), ADD UNIQUE KEY `lug_name` (`name`);

--
-- Indexes for table `lime_user_in_groups`
--
ALTER TABLE `lime_user_in_groups`
  ADD PRIMARY KEY (`ugid`,`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lime_assessments`
--
ALTER TABLE `lime_assessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_conditions`
--
ALTER TABLE `lime_conditions`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_expression_errors`
--
ALTER TABLE `lime_expression_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_failed_login_attempts`
--
ALTER TABLE `lime_failed_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_groups`
--
ALTER TABLE `lime_groups`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_labelsets`
--
ALTER TABLE `lime_labelsets`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_participant_attribute_names`
--
ALTER TABLE `lime_participant_attribute_names`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_participant_attribute_values`
--
ALTER TABLE `lime_participant_attribute_values`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_permissions`
--
ALTER TABLE `lime_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lime_plugins`
--
ALTER TABLE `lime_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lime_plugin_settings`
--
ALTER TABLE `lime_plugin_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_questions`
--
ALTER TABLE `lime_questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_question_attributes`
--
ALTER TABLE `lime_question_attributes`
  MODIFY `qaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_quota`
--
ALTER TABLE `lime_quota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_quota_languagesettings`
--
ALTER TABLE `lime_quota_languagesettings`
  MODIFY `quotals_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_quota_members`
--
ALTER TABLE `lime_quota_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_saved_control`
--
ALTER TABLE `lime_saved_control`
  MODIFY `scid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_survey_url_parameters`
--
ALTER TABLE `lime_survey_url_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lime_users`
--
ALTER TABLE `lime_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lime_user_groups`
--
ALTER TABLE `lime_user_groups`
  MODIFY `ugid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

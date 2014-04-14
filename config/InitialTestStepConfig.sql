--
-- Insert the basic test case `phd_study_step_config`
--

INSERT INTO `phd_study_step_config` (`studyStepConfigId`, `studyId`, `studyStepId`, `stepIndex`, `stepQuestion0Html`, `stepQuestion1Html`, `stepPrompt0Html`, `stepPrompt1Html`, `pageVar0Html`, `pageImgVar0Url`, `pageVar1Html`, `pageImgVar1Url`, `pageVar2Html`, `pageImgVar2Url`, `pageVar3Html`, `pageImgVar3Url`, `dateCreated`, `dateModified`) VALUES
(1, 1, 1, 0, '<p>You want to use the copy function of an API to copy a file  from one location to another. You aren&rsquo;t sure if the file paths used by the  function&rsquo;s parameters can be URLs or not, so you searched for the copy function  to answer the question.</p>\r\n<p>Imagine that the search results included the help topic on  the next page.</p>\r\n<p>When you are ready, see the help topic, click Continue, and  then click Yes or No as soon as you decide if the topic contains the  information you need.</p>', '<p>You want to make a deep copy of an object and you want to  know how to call the copy method to perform such an operation. You searched for  the copy method to answer the question. On the next page is a help topic that appeared  in the search results.</p>\r\n<p>Imagine that the search results included the help topic on  the next page.</p><p>When you are ready, see the help topic, click Continue, and  then click Yes or No as soon as you decide if the topic contains the  information you need.</p>', '<p>Task scenario: Can the file name parameters be formatted as URLs?</p>\r\n<p>Does this topic contain the information you need?</p>', '<p>Task scenario: Can the copy function perform a deep copy of an object?</p><p>Does this topic contain the information you need?</p>', '<style type="text/css">\r\n@charset "utf-8";\r\n/* CSS Document */\r\nbody {\r\n	font-family:Arial, Helvetica, sans-serif; \r\n	font-size:12px;\r\n}\r\n\r\np#pageTitle { font-weight:bold; font-size: 200%; }\r\n\r\np#pageVersion{ font-size: 80% }\r\np#pageDescription{ }\r\n\r\np.sectionHeading{ \r\n	font-size: 150%; \r\n	font-weight:bold; \r\n	background-color:#ddd; \r\n	border-top: 3px #000 solid;\r\n	padding: 10px 0 4px 1em;\r\n}\r\np#syntax{ \r\n	font-size: 120%;\r\n	font-family:"Lucida Console", Monaco, monospace;\r\n	border-style: solid;\r\n	border-width: thin;\r\n	margin-left: 1em;\r\n	padding: 10px 5px 10px 1.0em;\r\n}\r\np.descriptionText{ margin-left: 3.0em;  }\r\np.paramName{ margin-left: 1em; font-style:italic; }\r\np.paramDescription{ margin-left: 3.0em; }\r\np.paramWarning{ \r\n	margin-left: 10em; \r\n	margin-right: 10em;\r\n	font-size: 120%; \r\n	font-weight:bold; \r\n	padding: 10px 10px 10px 10px;\r\n	background-color:#ddd;\r\n	border-style: solid;\r\n	border-width: thin;\r\n	border-color: black;\r\n}\r\np.bodyText{ margin-left: 1em;  }\r\nli.relatedTopic{ }\r\nspan.fnName{ font-family: "Lucida Console", Monaco, monospace; }\r\n</style>\r\n<p id="pageTitle">copy</p>\r\n<p id="pageVersion">(PHP 4, PHP 5)</p>\r\n<p id="pageDescription">copy — Copies file</p>\r\n<p class="sectionHeading">Description</p> \r\n<p id="syntax">bool copy ( string $source , string $dest [, resource $context ] )</p>\r\n<p class="descriptionText">Makes a copy of the file source to dest. </p>\r\n<p class="descriptionText">If you wish to move a file, use the <span class="fnName">rename()</span> function.</p> \r\n<p class="sectionHeading">Parameters</p>\r\n<p class="paramName">source</p>\r\n<p class="paramDescription">Path to the source file.</p>\r\n<p class="paramName">dest</p>\r\n<p class="paramDescription">The destination path. If dest is a URL, the copy operation may fail if the wrapper does not support overwriting of existing files.</p>\r\n<p class="paramWarning">Warning: If the destination file already exists, it will be overwritten.</p> \r\n<p class="paramName">context</p>\r\n<p class="paramDescription">A valid context resource created with <span class="fnName">stream_context_create()</span>.</p>\r\n<p class="sectionHeading">Return Values</p>\r\n<p class="bodyText">Returns TRUE on success or FALSE on failure.</p>\r\n<p class="sectionHeading">Notes</p>\r\n<p class="bodyText"><span class="fnName">copy()</span> can’t copy files to directories that don’t exist.</p>\r\n<p class="bodyText"><span class="fnName">copy()</span> sets the destination file''s last modified time/date.</p>\r\n<p class="sectionHeading">Related Topic</p>\r\n<ul>\r\n<li class="relatedTopic"><span class="fnName">stream_copy_to_stream()</span> – Copies the contents of one stream to another stream</li>\r\n<li class="relatedTopic"><span class="fnName">file_get_contents()</span> – Reads the contents of a file to a buffer</li>\r\n<li class="relatedTopic"><span class="fnName">fwrite()</span> – Writes a buffer to a file</li>\r\n<li class="relatedTopic"><span class="fnName">mkdir()</span> – Creates a new directory</li>\r\n<li class="relatedTopic"><span class="fnName">move_uploaded_file()</span> - Moves an uploaded file to a new location</li>\r\n<li class="relatedTopic"><span class="fnName">rename()</span> - Renames a file or directory</li>\r\n<li class="relatedTopic">The section of the manual about handling file uploads</li>\r\n</ul>\r\n<p class="sectionHeading">Examples</p>\r\n<pre>\r\n&lt;?php\r\n  $file = ''example.txt'';\r\n  $newfile = ''example.txt.bak'';\r\n\r\n  if (!copy($file, $newfile)) {\r\n    echo "failed to copy $file...\\n";\r\n  }\r\n?&gt;\r\n</pre>', 'https://docsbydesigncom.secure.myhosting.net/phdimg/task1_hh.png', '<style type="text/css">\r\n@charset "utf-8";\r\n/* CSS Document */\r\nbody {\r\n	font-family:Arial, Helvetica, sans-serif; \r\n	font-size:12px;\r\n}\r\n\r\np#pageTitle {  }\r\n\r\np#pageVersion{ margin-top:-4.5ex; text-align:right }\r\np#pageDescription{ }\r\n\r\np.sectionHeading{ }\r\np#syntax{ margin-left: 1em; }\r\np.descriptionText{ margin-left: 3.0em;  }\r\np.paramName{ margin-left: 1em; }\r\np.paramDescription{ margin-left: 3.0em; }\r\np.paramWarning{ margin-left: 10em;  }\r\np.bodyText{ margin-left: 1em;  }\r\nli.relatedTopic{ }\r\nspan.fnName{ }\r\npre {font-family:Arial, Helvetica, sans-serif; font-size:12px;}\r\n</style>\r\n<p id="pageTitle">copy</p>\r\n<p id="pageVersion">(PHP 4, PHP 5)</p>\r\n<p id="pageDescription">copy — Copies file</p>\r\n<p class="sectionHeading">Description</p> \r\n<p id="syntax">bool copy ( string $source , string $dest [, resource $context ] )</p>\r\n<p class="descriptionText">Makes a copy of the file source to dest. </p>\r\n<p class="descriptionText">If you wish to move a file, use the <span class="fnName">rename()</span> function.</p> \r\n<p class="sectionHeading">Parameters</p>\r\n<p class="paramName">source</p>\r\n<p class="paramDescription">Path to the source file.</p>\r\n<p class="paramName">dest</p>\r\n<p class="paramDescription">The destination path. If dest is a URL, the copy operation may fail if the wrapper does not support overwriting of existing files.</p>\r\n<p class="paramWarning">Warning: If the destination file already exists, it will be overwritten.</p> \r\n<p class="paramName">context</p>\r\n<p class="paramDescription">A valid context resource created with <span class="fnName">stream_context_create()</span>.</p>\r\n<p class="sectionHeading">Return Values</p>\r\n<p class="bodyText">Returns TRUE on success or FALSE on failure.</p>\r\n<p class="sectionHeading">Notes</p>\r\n<p class="bodyText"><span class="fnName">copy()</span> can’t copy files to directories that don’t exist.</p>\r\n<p class="bodyText"><span class="fnName">copy()</span> sets the destination file''s last modified time/date.</p>\r\n<p class="sectionHeading">Related Topic</p>\r\n<ul>\r\n<li class="relatedTopic"><span class="fnName">stream_copy_to_stream()</span> – Copies the contents of one stream to another stream</li>\r\n<li class="relatedTopic"><span class="fnName">file_get_contents()</span> – Reads the contents of a file to a buffer</li>\r\n<li class="relatedTopic"><span class="fnName">fwrite()</span> – Writes a buffer to a file</li>\r\n<li class="relatedTopic"><span class="fnName">mkdir()</span> – Creates a new directory</li>\r\n<li class="relatedTopic"><span class="fnName">move_uploaded_file()</span> - Moves an uploaded file to a new location</li>\r\n<li class="relatedTopic"><span class="fnName">rename()</span> - Renames a file or directory</li>\r\n<li class="relatedTopic">The section of the manual about handling file uploads</li>\r\n</ul>\r\n<p class="sectionHeading">Examples</p>\r\n<pre>\r\n&lt;?php\r\n  $file = ''example.txt'';\r\n  $newfile = ''example.txt.bak'';\r\n\r\n  if (!copy($file, $newfile)) {\r\n    echo "failed to copy $file...\\n";\r\n  }\r\n?&gt;\r\n</pre>', 'https://docsbydesigncom.secure.myhosting.net/phdimg/task1_hl.png', '<style type="text/css">\r\n@charset "utf-8";\r\n/* CSS Document */\r\nbody {\r\n	font-family:Arial, Helvetica, sans-serif; \r\n	font-size:12px;\r\n}\r\n\r\np#pageTitle { font-weight:bold; font-size: 200%; }\r\n\r\np#pageVersion{ font-size: 80% }\r\np#pageDescription{ }\r\n\r\np.sectionHeading{ \r\n	font-size: 150%; \r\n	font-weight:bold; \r\n	background-color:#ddd; \r\n	border-top: 3px #000 solid;\r\n	padding: 10px 0 4px 1em;\r\n}\r\np#syntax{ \r\n	font-size: 120%;\r\n	font-family:"Lucida Console", Monaco, monospace;\r\n	border-style: solid;\r\n	border-width: thin;\r\n	margin-left: 1em;\r\n	padding: 10px 5px 10px 1.0em;\r\n}\r\np.descriptionText{ margin-left: 3.0em;  }\r\np.paramName{ margin-left: 1em; font-style:italic; }\r\np.paramDescription{ margin-left: 3.0em; }\r\np.paramWarning{ \r\n	margin-left: 10em; \r\n	margin-right: 10em;\r\n	font-size: 120%; \r\n	font-weight:bold; \r\n	padding: 10px 10px 10px 10px;\r\n	background-color:#ddd;\r\n	border-style: solid;\r\n	border-width: thin;\r\n	border-color: black;\r\n}\r\np.bodyText{ margin-left: 1em;  }\r\nli.relatedTopic{ }\r\nspan.fnName{ font-family: "Lucida Console", Monaco, monospace; }\r\n</style>\r\n<p id="pageTitle">copy</p>\r\n<p id="pageVersion">(PHP 4, PHP 5)</p>\r\n<p id="pageDescription">copy — Copies file</p>\r\n<p class="sectionHeading">Description</p> \r\n<p id="syntax">bool copy ($source,  $dest [, $context])</p>\r\n<p class="sectionHeading">Parameters</p>\r\n<p class="paramName">source</p>\r\n<p class="paramDescription">Path to the source file.</p>\r\n<p class="paramName">dest</p>\r\n<p class="paramDescription">The destination path. The operation may fail if dest is a URL, and the wrapper does not support overwriting existing files.</p>\r\n<p class="paramName">context</p>\r\n<p class="paramDescription">A valid stream context resource.</p>\r\n<p class="sectionHeading">Return Values</p>\r\n<p class="bodyText">Returns TRUE on success or FALSE on failure.</p>\r\n<p class="sectionHeading">Notes</p>\r\n<p class="bodyText">If the destination file already exists, it will be overwritten.</p>', 'https://docsbydesigncom.secure.myhosting.net/phdimg/task1_lh.png', '<style type="text/css">\r\n@charset "utf-8";\r\n/* CSS Document */\r\nbody {\r\n	font-family:Arial, Helvetica, sans-serif; \r\n	font-size:12px;\r\n}\r\n\r\np#pageTitle {  }\r\n\r\np#pageVersion{ margin-top:-4.5ex; text-align:right }\r\np#pageDescription{ }\r\n\r\np.sectionHeading{ }\r\np#syntax{ margin-left: 1em; }\r\np.descriptionText{ margin-left: 3.0em;  }\r\np.paramName{ margin-left: 1em; }\r\np.paramDescription{ margin-left: 3.0em; }\r\np.paramWarning{ margin-left: 10em;  }\r\np.bodyText{ margin-left: 1em;  }\r\nli.relatedTopic{ }\r\nspan.fnName{ }\r\npre {font-family:Arial, Helvetica, sans-serif; font-size:12px;}\r\n</style>\r\n<p id="pageTitle">copy</p>\r\n<p id="pageVersion">(PHP 4, PHP 5)</p>\r\n<p id="pageDescription">copy — Copies file</p>\r\n<p class="sectionHeading">Description</p> \r\n<p id="syntax">bool copy ($source,  $dest [, $context])</p>\r\n<p class="sectionHeading">Parameters</p>\r\n<p class="paramName">source</p>\r\n<p class="paramDescription">Path to the source file.</p>\r\n<p class="paramName">dest</p>\r\n<p class="paramDescription">The destination path. The operation may fail if dest is a URL, and the wrapper does not support overwriting existing files.</p>\r\n<p class="paramName">context</p>\r\n<p class="paramDescription">A valid stream context resource.</p>\r\n<p class="sectionHeading">Return Values</p>\r\n<p class="bodyText">Returns TRUE on success or FALSE on failure.</p>\r\n<p class="sectionHeading">Notes</p>\r\n<p class="bodyText">If the destination file already exists, it will be overwritten.</p>', 'https://docsbydesigncom.secure.myhosting.net/phdimg/task1_ll.png', '2014-04-13 22:14:23', '2014-04-14 02:32:24');

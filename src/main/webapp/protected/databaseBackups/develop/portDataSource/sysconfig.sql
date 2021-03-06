INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'langs', 'Definition of the system languages', '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'params', 'Configuration params.', '<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
</Params>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'userProfileTypes', 'User Profile Types Definitions', '<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searcheable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'contentTypes', 'Definition of the Content Types', '<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="ANN" typedescr="Announcement" viewpage="contentview" listmodel="10051" defaultmodel="10005">
		<attributes>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="StartDate" attributetype="Date" description="Start Date" searchable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" description="End Date" searchable="true">
				<validations>
					<required>true</required>
					<rangestart attribute="StartDate" />
				</validations>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="contentview" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="LOG" typedescr="Logo" viewpage="**NULL**" listmodel="**NULL**" defaultmodel="**NULL**">
		<attributes>
			<attribute name="Logo" attributetype="Image">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="NWS" typedescr="News" viewpage="read_the_news" listmodel="10021" defaultmodel="10002">
		<attributes>
			<attribute name="Date" attributetype="Date" searchable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="VID" typedescr="Video" viewpage="contentview" listmodel="41" defaultmodel="4">
		<attributes>
			<attribute name="Title" attributetype="Text" description="Title" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Date" attributetype="Date" description="Date" searchable="true" indexingtype="TEXT" />
			<attribute name="Desc" attributetype="Longtext" description="Description" indexingtype="TEXT" />
			<attribute name="Video" attributetype="Monotext" description="Video ID">
				<validations>
					<expression evalOnValuedAttribute="true">
						<ognlexpression><![CDATA[#attribute.getText().length() > 0]]></ognlexpression>
						<errormessage><![CDATA[The video id cannot be empty]]></errormessage>
						<helpmessage><![CDATA[The id of the video, usually you can find it in its url: https://www.youtube.com/watch?v=< here''s the id >]]></helpmessage>
					</expression>
				</validations>
			</attribute>
			<attribute name="Provider" attributetype="Enumerator" description="Provider" searchable="true" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[youtube,vimeo]]>
			</attribute>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'imageDimensions', 'Definition of the resized image dimensions', '<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'index');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'entandoComponentsReport', 'The component installation report', '<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2014-10-27 14:44:29</creation>
	<lastupdate>2014-10-27 14:44:36</lastupdate>
	<components>
		<component code="entandoCore" date="2014-10-27 14:44:29" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergroups" />
					<table name="authuserroles" />
					<table name="authusershortcuts" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
					<table name="authuserprofiles" />
					<table name="authuserprofilesearch" />
					<table name="authuserprofileattrroles" />
					<table name="actionlogrecords" />
					<table name="actionlogrelations" />
					<table name="actionloglikerecords" />
				</datasource>
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="widgetcatalog" />
					<table name="widgetconfig" />
					<table name="uniquekeys" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="contentattributeroles" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
					<table name="workcontentattributeroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-jquery" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-html5-essentials" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-login_form" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-less" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-bootstrap" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-language_choose" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_form" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-generic" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_bar" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-bootstrap-hero" date="2014-10-27 14:44:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');

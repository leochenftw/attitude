<?php
class CustomSiteConfig extends DataExtension {

    public static $db = array(
        'GoogleSiteVerificationCode'    =>  'Varchar(128)',
        'GoogleAnalyticsCode'           =>  'Varchar(20)',
        'SiteVersion'                   =>  'Varchar(10)',
        'GoogleCustomCode'              =>  'HTMLText',
        'Profile'                       =>  'HTMLText'
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
        'CV'                            =>  'File'
    );

    /**
     * Many_many relationship
     * @var array
     */
    private static $many_many = array(
        'Skills'                        =>  'Skill'
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldsToTab(
            'Root.Profile',
            array(
                HtmlEditorField::create(
                    'Profile',
                    'Profile'
                ),
                UploadField::create(
                    'CV',
                    'CV'
                ),
                TagField::create(
                    'Skills',
                    'Skills',
                    Skill::get(),
                    $this->owner->Skills()
                )->setShouldLazyLoad(true)->setCanCreate(true)
            )
        );

        $fields->addFieldToTab("Root.Google", new TextField('GoogleSiteVerificationCode', 'Google Site Verification Code'));
        $fields->addFieldToTab("Root.Google", new TextField('GoogleAnalyticsCode', 'Google Analytics Code'));
        $fields->addFieldToTab("Root.Google", new TextareaField('GoogleCustomCode', 'Custom Google Code'));

        $fields->addFieldToTab('Root.Main', new TextField('SiteVersion', 'Site Version'));
    }

}

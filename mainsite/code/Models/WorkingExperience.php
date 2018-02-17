<?php

class WorkingExperience extends Experience
{
    /**
     * Database fields
     * @var array
     */
    protected static $db = array(
        'JobTitle'          =>  'Varchar(128)',
        'CompanyName'       =>  'Varchar(256)'
    );

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('ExperienceTitle');
        $fields->changeFieldOrder(array(
            'JobTitle'
        ));
        return $fields;
    }

    public function onBeforeWrite()
    {
        parent::onBeforeWrite();
        $this->ExperienceTitle = $this->JobTitle;
    }
}

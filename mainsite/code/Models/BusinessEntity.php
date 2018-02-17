<?php

class BusinessEntity extends DataObject
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'Title'     =>  'Varchar(128)'
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
        'Website'   =>  'Link'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab(
            'Root.Main',
            LinkField::create('WebsiteID', 'Website')
        );

        return $fields;
    }
}

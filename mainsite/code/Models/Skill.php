<?php

class Skill extends Technology
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'SortOrder'     =>  'Int',
        'Score'         =>  'Int'
    );

    /**
     * Default sort ordering
     * @var string
     */
    private static $default_sort = array(
        'SortOrder'     =>  'ASC'
    );

    /**
     * Belongs_many_many relationship
     * @var array
     */
    private static $belongs_many_many = array(
        'Profile'       =>  'SiteConfig'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeByName('SortOrder');
        return $fields;
    }
}

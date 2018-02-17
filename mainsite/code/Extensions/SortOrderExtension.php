<?php

class SortOrderExtension extends DataExtension
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'SortOrder'     =>  'Int'
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->removeByName('SortOrder');
    }
}

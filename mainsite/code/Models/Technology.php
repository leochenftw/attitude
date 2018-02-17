<?php

class Technology extends DataObject
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'Title'         =>  'Varchar(64)',
        'IconClass'     =>  'Varchar(32)'
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
        'Icon'          =>  'Image'
    );

    private static $belongs_many_many = array(
        'Projects'      =>  'Project',
        'Works'          =>  'Work'
    );
}

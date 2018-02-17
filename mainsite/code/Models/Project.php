<?php

class Project extends DataObject
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'Title'         =>  'Varchar(128)',
        'Code'          =>  'Varchar(16)',
        'Type'          =>  'Varchar(32)',
        'Status'        =>  'Varchar(32)',
        'Problem'       =>  'Text',
        'Solution'      =>  'Text',
        'Description'   =>  'Text',
        'Benefit'       =>  'Text'
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
        'Cover'         =>  'Image',
    );

    /**
     * Default sort ordering
     * @var string
     */
    private static $default_sort = array(
        'SortOrder'     =>  'ASC'
    );

    private static $extensions = array(
        'HeroExtension',
        'SlugExtension',
        'SortOrderExtension'
    );

    /**
     * Many_many relationship
     * @var array
     */
    private static $many_many = array(
        'Coverage'      =>  'Technology'
    );

    /**
     * CMS Fields
     * @return FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('Coverage');
        $fields->addFieldToTab(
            'Root.Main',
            TagField::create(
                'Coverage',
                'Technology covered',
                Technology::get(),
                $this->Coverage()
            )->setShouldLazyLoad(true)->setCanCreate(true)
        );

        $fields->addFieldToTab('Root.Main', SaltedUploader::create('Cover', 'Cover')->setCropperRatio(375/667));

        return $fields;
    }
}

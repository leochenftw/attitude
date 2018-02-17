<?php

class Work extends DataObject
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'SortOrder'     =>  'Int',
        'Title'         =>  'Varchar(256)',
        'Subtitle'      =>  'Varchar(512)',
        'Slug'          =>  'Varchar(256)',
        'When'          =>  'Date',
        'Duty'          =>  'Varchar(512)',
        'Content'       =>  'Text'
    );

    /**
     * Default sort ordering
     * @var string
     */
    private static $default_sort = array(
        'SortOrder'     =>  'ASC'
    );

    private static $extensions = array(
        'SlugExtension'
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
        'Agency'        =>  'Agency',
        'Client'        =>  'Client',
        'Cover'         =>  'Image',
        'Link'          =>  'Link'
    );

    /**
     * Has_many relationship
     * @var array
     */
    private static $has_many = array(
        'Showcases'     =>  'Image'
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
        $fields->removeByName('Showcases');
        $fields->addFieldsToTab(
            'Root.Main',
            array(
                LinkField::create('LinkID', 'Link to site'),
                TagField::create(
                    'Coverage',
                    'Technologies covered',
                    Technology::get(),
                    $this->Coverage()
                )->setShouldLazyLoad(true)->setCanCreate(true)
            )
        );

        $fields->addFieldToTab(
            'Root.Showcases',
            SortableUploadField::create(
                'Showcases',
                'Showcases'
            )
        );

        $agent_source = function()
        {
            return Agency::get()->map()->toArray();
        };

        $client_source = function()
        {
            return Client::get()->map()->toArray();
        };

        // $field->useAddNew('Client', $client_source);

        $fields->addFieldToTab(
            'Root.Main',
            DropdownField::create(
                'AgencyID',
                'Agency',
                $agent_source()
            )->useAddNew('Agency', $agent_source)->setEmptyString('- select one -'),
            'Cover'
        );

        $fields->addFieldToTab(
            'Root.Main',
            DropdownField::create(
                'ClientID',
                'Client',
                $client_source()
            )->useAddNew('Client', $client_source)->setEmptyString('- select one -'),
            'Cover'
        );

        $fields->removeByName('SortOrder');
        $fields->fieldByName('Root.Main.When')->setConfig('showcalendar', 1);

        return $fields;
    }

    public function NextWork()
    {
        $work = Work::get()->filter(array('SortOrder:GreaterThan' => $this->SortOrder))->first();
        if (!$work) {
            $work = Work::get()->filter(array('ID:GreaterThan' => $this->ID))->first();
        }
        return $work;
    }

    public function PrevWork()
    {
        $work = Work::get()->filter(array('SortOrder:LessThan' => $this->SortOrder))->first();
        if (!$work) {
            $work = Work::get()->filter(array('ID:LessThan' => $this->ID))->first();
        }
        return $work;
    }
}

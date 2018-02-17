<?php

class LinkableExtension extends DataExtension
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'ScrollTo'      =>  'Varchar(32)'
    );

    /**
     * Update Fields
     * @return FieldList
     */
    public function updateCMSFields(FieldList $fields)
    {
        $owner = $this->owner;
        $fields->push(
            TextField::create(
                'ScrollTo',
                'HTML container\'s selector'
            )->setDescription('e.g. #section-aboutme')
        );
        return $fields;
    }
}

<?php

use SaltedHerring\Utilities;

class Testimonial extends DataObject
{
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'Title'     =>  'Varchar(32)',
        'Email'     =>  'Varchar(255)',
        'Content'   =>  'HTMLText',
        'Position'  =>  'Varchar(64)'
    );

    private static $extensions = array(
        'SortOrderExtension'
    );

    /**
     * Has_one relationship
     * @var array
     */
    private static $has_one = array(
        'Portrait'  =>  'Image',
        'Client'    =>  'Client'
    );

    public function getAvatarURL($width = 160)
    {
        if ($this->Portrait()->exists()) {
            return $this->Portrait()->FillMax($width, $width)->URL;
        }

        if (!empty($this->Email)) {
            return Utilities::EmailGravatar($this->Email, $width);
        }

        return null;
    }
}

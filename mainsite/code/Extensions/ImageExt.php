<?php

class ImageExt extends DataExtension {
    /**
     * Default sort ordering
     * @var string
     */
    private static $default_sort = 'Sort ASC';
    /**
     * Database fields
     * @var array
     */
    private static $db = array(
        'Sort'      =>  'Int'
    );
    protected static $has_one = array(
        'Work'      =>  'Work'
    );

    public function getRatio()
    {
        $width = $this->owner->Width;
        $height = $this->owner->Height;

        // SaltedHerring\Debugger::inspect($width . ' : ' . $height);

        return (($height / $width) * 100) . '%';
    }
}

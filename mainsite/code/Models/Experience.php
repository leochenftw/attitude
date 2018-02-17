<?php

class Experience extends DataObject
{
    /**
     * Database fields
     * @var array
     */
    protected static $db = array(
        'ExperienceTitle'       =>  'Varchar(256)',
        'Location'              =>  'Varchar(128)',
        'DateStarted'           =>  'Date',
        'DateEnded'             =>  'Date',
        'isStill'               =>  'Boolean',
        'Description'           =>  'Text',
        'DontList'              =>  'Boolean'
    );

    /**
     * Defines summary fields commonly used in table columns
     * as a quick overview of the data for this dataobject
     * @var array
     */
    private static $summary_fields = array(
        'ExperienceTitle',
        'DateStarted',
        'Description'
    );

    /**
     * Default sort ordering
     * @var string
     */
    private static $default_sort = array(
        'DateStarted'           =>  'DESC'
    );

    public function getTitle()
    {
        return $this->ExperienceTitle;
    }

    public function Title()
    {
        return $this->getTitle();
    }

    public function isDifferentYear()
    {
        if (!empty($this->DateEnded)) {
            $start = new DateTime($this->DateStarted);
            $end = new DateTime($this->DateEnded);
            $start = $start->format('Y');
            $end = $end->format('Y');

            return !($start == $end);
        }

        return false;
    }
}

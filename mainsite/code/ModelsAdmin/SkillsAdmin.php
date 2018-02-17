<?php
/**
 * @file SkillsAdmin.php
 *
 * */

class SkillsAdmin extends ModelAdmin {
    private static $managed_models = array('Skill');
    private static $url_segment = 'skills';
    private static $menu_title = 'Skills';
    // private static $menu_icon = 'themes/default/images/cms_icons/camera.png';

    public function getEditForm($id = null, $fields = null) {

        $form = parent::getEditForm($id, $fields);
        $grid = $form->Fields()->fieldByName($this->sanitiseClassName($this->modelClass));
        $grid->getConfig()
            ->removeComponentsByType('GridFieldPaginator')
            ->removeComponentsByType('GridFieldExportButton')
            ->removeComponentsByType('GridFieldPrintButton')
            ->addComponents(
                new GridFieldPaginatorWithShowAll(30),
                new GridFieldOrderableRows('SortOrder')
            );
        return $form;
    }


}

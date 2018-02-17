<?php
/**
 * @file WorksAdmin.php
 *
 * Left-hand-side tab : Admin works
 * */

class WorksAdmin extends ModelAdmin {
    private static $managed_models = array('Work');
    private static $url_segment = 'works';
    private static $menu_title = 'Works';
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

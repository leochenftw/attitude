<?php

class WorksController extends Page_Controller
{
    public function index($request)
    {
        if ($slug = $request->param('slug')) {
            $this->BodyClass = 'work';
            $work = Work::get()->filter(array('Slug' => $slug))->first();
            if (!empty($work)) {
                return $this->customise($work)->renderWith(array('WorkPage', 'Page'));
            }

            return $this->httpError(404);
        }

        return $this->renderWith('Page');
    }

    public function getTitle()
    {
        if ($urls = $_REQUEST['url']) {
            $segments = explode('/', $urls);
            if (!empty($segments[2])) {
                $slug = $segments[2];
                if ($work = Work::get()->filter(array('Slug' => $slug))->first()) {
                    return $work->Title;
                }
            }
        }

        return 'Work';
    }

    public function Title()
    {
        return $this->getTitle();
    }
}

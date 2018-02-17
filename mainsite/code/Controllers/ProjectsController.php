<?php

class ProjectsController extends Page_Controller
{
    public function index($request)
    {
        if ($slug = $request->param('slug')) {
            $this->BodyClass = 'projects';
            $project = Project::get()->filter(array('Slug' => $slug))->first();
            if (!empty($project)) {
                return $this->customise($project)->renderWith(array('ProjectPage', 'Page'));
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
                if ($project = Project::get()->filter(array('Slug' => $slug))->first()) {
                    return $project->Title;
                }
            }
        }

        return 'Projects';
    }

    public function Title()
    {
        return $this->getTitle();
    }
}

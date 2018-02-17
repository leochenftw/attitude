<?php
use SaltedHerring\Debugger;
class HomePage extends Page
{

}

class HomePage_Controller extends Page_Controller
{
    public function index($request)
    {
        if ($request->isAjax()) {
            if ($toGet = $request->getVar('to_get')) {
                if ($toGet == 'Work') {
                    $data = array('Works' => $this->getSpotlightWorks());
                    $data = new ArrayData($data);
                    return $this->customise($data)->renderWith('WorkItems');
                }
            }
        }

        return $this->renderWith(array('HomePage', 'Page'));
    }

    public function getAboutMe()
    {
        return Page::get()->filter(array('Title' => 'About me'))->first();
    }

    public function getSpotlightWorks()
    {
        $work = Work::get();
        $pagination = new PaginatedList($work, $this->request);
        $pagination->setPageLength(3);
        return $pagination;
    }

    public function getSpotlightProjects()
    {
        return Project::get()->limit(5);
    }

    public function getProfile()
    {
        $siteconfig = SiteConfig::current_site_config();
        $profile = array(
            'Content'       =>  $siteconfig->Profile,
            'CV'            =>  $siteconfig->CV()->exists() ? $siteconfig->CV()->Link() : '#',
            'Skills'        =>  $siteconfig->Skills(),
            'Education'     =>  StudyExperience::get()->filter(array('DontList' => false)),
            'Careers'       =>  WorkingExperience::get()->filter(array('DontList' => false))
        );
        return new ArrayData($profile);
    }

    public function getTestimonials()
    {
        $testimonials = Testimonial::get();
        $pagination = new PaginatedList($testimonials, $this->request);
        $pagination->setPageLength(5);
        return $pagination;
    }
}

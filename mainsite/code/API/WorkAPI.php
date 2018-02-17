<?php
use Ntb\RestAPI\BaseRestController as BaseRestController;
use SaltedHerring\Debugger as Debugger;
/**
 * @file WorkAPI.php
 *
 * Controller to present the data from forms.
 * */
class WorkAPI extends BaseRestController
{
    private $pageSize                   =   3;

    private static $allowed_actions = array (
        'get'                           =>  true
    );


    public function get($request)
    {
        $works                          =   Work::get();

        return $this->Paginate($works);
    }

    private function Paginate($works)
    {
        $work_count                     =   $works->count();

        if ($work_count == 0) {
            return array('keywords' => $this->keywords, 'list' => array(), 'count' => 0, 'pagination' => array('message' => SiteConfig::current_site_config()->ArticleEmptyResult));
        }

        $start                          =   $this->request->getVar('start');

        if ($work_count > $this->pageSize) {
            $paged                      =   new PaginatedList($works, $this->request);

            $paged->setPageLength($this->pageSize);

            $works                      =   $paged;
            $list                       =   $works->getIterator();
            $data                       =   [];

            foreach ($list as $item) {
                $data[]                 =   $item->cached(true);
            }

            if ($paged->MoreThanOnePage()) {
                if ($paged->NotLastPage()) {
                    $pagination         =   $this->sanitisePagination($paged->NextLink());
                    return  array(
                        'title'         =>  $this->getMyTitle(),
                        'list'          =>  $data,
                        'count'         =>  $work_count,
                        'pagination'    =>  array('href' => $pagination)
                    );
                }

                return  array(
                    'title'             =>  $this->getMyTitle(),
                    'list'              =>  $data,
                    'count'             =>  $work_count,
                    'pagination'        =>  array('message' => null)
                );
            }
        }

        $data                           =   $works->json();

        return array(
            'title'                     =>  $this->getMyTitle(),
            'keywords'                  =>  $this->keywords,
            'list'                      =>  $data,
            'count'                     =>  count($data),
            'pagination'                =>  array('message' => null)
        );
    }

    private function sanitisePagination($pagination)
    {
        $pagination                     =   str_replace('&amp;', '&', $pagination);
        $parts                          =   parse_url($pagination);

        parse_str($parts['query'], $query);

        if (empty($query['keywords']) && !empty($this->keywords)) {
            $pagination .= '&keywords=' . $this->keywords;
        }

        return $pagination;
    }

}

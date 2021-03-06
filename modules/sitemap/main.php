<?php

	$level   = 1;
	function create_sitemap($parent = 0, $pages)
	{
		global $htmlroot, $page, $level, $page_accommodation;

		$sqlPages = "SELECT gp.`id` AS page_id,
				pmd.`id` AS meta_data_id,
				pmd.`name`,
				pmd.`menu_label` AS menu_label,
				pmd.`title` AS page_title,
				pmd.`url` AS page_url,
				pmd.`full_url` AS page_full_url,
	            gp.`parent_id` AS page_parentid
            FROM `general_pages` gp
            LEFT JOIN `page_meta_data` pmd
            ON(gp.`page_meta_data_id` = pmd.`id`)
            WHERE pmd.`status` = 'A'
            AND gp.`parent_id` = '{$parent}'
            ORDER BY pmd.`rank`";

		$pages  = fetch_all($sqlPages);

		$current_page = $page;
		$hasChildren  = false;
		$outputHtml   = '<ul class="level-'.$level.'">%s</ul>';
		$siteMapHtml = '';

		//$sitemapItemCls = (($level == 1)? 'fa-caret-right' : (($level == 2)? 'fa-angle-right' : 'fa-angle-double-right'));
		$sitemapItemCls = 'fa-angle-double-right';

	    // get all active pages
		if(count($pages) > 0)
		{

			++$level;
		    foreach($pages as $page)
		    {
		    $page_id   = $page['page_id'];
				$title     = ($page['page_title']) ? $page['page_title'] : $page['menu_label'];
				$lable     = ($page['menu_label']) ? $page['menu_label'] : $page['name'];

				$child_pages = '';

				if(!$lable) $lable = 'Untitled';

				$child_pages = create_sitemap($page_id, $pages);

				if($page_id == $page_accommodation->id){

					$sqlAccom = "SELECT pmd.`menu_label`,pmd.`title`,pmd.`full_url`
                            FROM `accommodation` t
                            LEFT JOIN `page_meta_data` pmd
                            ON(t.`page_meta_data_id` = pmd.`id`)
                            WHERE pmd.`status` = 'A'
                            AND pmd.`menu_label` != ''
                            ORDER BY pmd.`rank`";

                    $arrAccom  = fetch_all($sqlAccom);
                    $accomPages = '';

                    if(!empty($arrAccom )){

                    	$accomPages .= '<ul class="level-'.$level.'">';

	                    foreach ($arrAccom as $accom) {
	                        $accomPages .= '<li><i class="fa '.$sitemapItemCls.'"></i><a href="'.$accom['full_url'].'" title="'.$accom['title'].'" class="sitemap__item">'.$accom['menu_label'].'</a></li>';
	                    }

                    	$accomPages .= '</ul>';
                    }

                    $child_pages .=  $accomPages;
				}


	            $siteMapHtml .= '<li><i class="fa '.$sitemapItemCls.'"></i><a href="/'.$page['page_url'].'" title="'.$title.'" class="sitemap__item">'.$lable.'</a>';

	           	if(!empty($child_pages)) $siteMapHtml .= $child_pages;

	            $siteMapHtml .= '</li>';
		    }

	    }

	    // Returns the HTML
	    return sprintf($outputHtml, $siteMapHtml);

	}

	$siteMapView = create_sitemap(0, $pages);

	$tags_arr['content'] .= '<div class="row sitemap"><div class="col-xs-12">'.$siteMapView.'</div></div>';
?>

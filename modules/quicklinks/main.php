<?php

###############################################################################################################################
## Make the Quicklinks
###############################################################################################################################


$quicklinks_view = '';


$quicklinks = fetch_all("SELECT pmd.`quicklink_heading`, pmd.`quicklink_photo`,pmd.`quicklink_heading`, pmd.`menu_label` AS label, `quicklink_menu_label` AS button_label, pmd.`quicklink_thumb`, pmd.`title`, pmd.`short_description`, pmd.`full_url`
    FROM `general_pages` gp
    LEFT JOIN `page_meta_data` pmd
    ON(pmd.`id` = gp.`page_meta_data_id`)
    LEFT JOIN `page_has_quicklink` phq
    ON(phq.`quicklink_page_id` = gp.`id`)
    WHERE pmd.`status` = 'A'
    AND phq.`page_id` = '{$page_id}'
    ");

      // $count=count($quicklinks);
      // echo $count;die;



if( !empty($quicklinks) )
{

    $curCount=1;
    $maxCount=count($quicklinks);

    foreach ($quicklinks as $quicklink)
    {

        $label             = $quicklink['label'];
        $title             = $quicklink['title'];
        $button_label      = $quicklink['button_label'];
        $thumb_photo       = $quicklink['quicklink_thumb'];
        $full_url          = $quicklink['full_url'];
        $short_description = $quicklink['short_description'];
        $heading           = $quicklink['quicklink_heading'];
        $quicklink_photo   = $quicklink['quicklink_photo'] ;
        $col='col-sm-6 ';
   

        if($curCount<=$maxCount){
          if($curCount%2!=0){
            // left_quicklink
            $col='col-sm-6 left_quicklink ';
          }else {
            //right_quicklink
            $col='col-sm-6 right_quicklink ';
          }
        }
        //determine the last quicklink shoud be bot or right
        if(($curCount==$maxCount)&&($maxCount%2!=0)){
          $col='bot_quicklink ';
          $thumb_photo= $quicklink_photo;
        }
        

        $quicklinks_view .= '<div class="col-xs-12 '.$col.'ql-col">
            <div class="ql-hero-img">
                <a href="'.$full_url.'" title="'.$title.'">
                    <span style="background-image:url('.$thumb_photo.')" class="quick-'.$curCount.'">
                    </span>
                </a>
            </div>
            <div class="quicklinks-heading" data-id="quick-'.$curCount.'">
              <h2><a href="'.$full_url.'" title="'.$title.'">'.  $heading.'</a></h2>
            </div>
            <p class="quicklinks-descr">'.$short_description.'</p>
            <div class="foot">
                <a href="'.$full_url.'" title="'.$title.'" class="btn btn-white-ghost">'.$button_label.'</a>
            </div>
        </div>';
        $curCount++;
    }

    $quicklinks_view = '<section class="section grid quicklinks">
        <div class="container container-fw">
            <div class="row">
                '.$quicklinks_view.'
            </div>
        </div>
    </section>';

}

$tags_arr['mod_view'] .= $quicklinks_view;

?>

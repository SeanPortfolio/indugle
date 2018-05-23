<?php

$body_cls = (!empty($is_home_page))? ' home' : '';

$slideshow_photos = fetch_all("SELECT `full_path`, `width`, `height`, `caption`, `alt_text`
    FROM `photo`
    WHERE `photo_group_id` = '{$slideshow_id}'
    AND `full_path` != ''
    ORDER BY `rank`");


$auto_rotate= fetch_row("SELECT `Auto_rotate` FROM `photo_group` WHERE `id` = '{$slideshow_id}'
    ");
$jsVars['slideshowAutoRotate']  = '';
if($auto_rotate["Auto_rotate"]=='Y'){
    $jsVars['slideshowAutoRotate']=true;
}else{
    $jsVars['slideshowAutoRotate']=false;
}

//$slideshowAutoRotate


//$tags_arr['no-booking-btn-class-slider'] = '';
if( !empty($slideshow_photos) )
{

    foreach ($slideshow_photos as $slideshow_photo)
    {
       $booking_button = (($resbook_id) ? '<div class="booking">'.$booking.'</div>' : '');

       if($resbook_id){

        if(empty($slideshow_photo['caption'])){
            $slideshow_caption = (($slideshow_photo['caption'] || $resbook_id) ? '<div class="heroshot_overlay heroshot__caption no-caption-slides"><div class="caption_container"><p class="heroshot__caption__text">'.$slideshow_photo['caption'].'</p></div>'.$booking_button.'</div>' : '');

            $slideshow_view .= '<div class="slider__img item" style="background-image: url('.$slideshow_photo['full_path'].');">
            '.$slideshow_caption.'</div>'; 

        }else{

            $slideshow_caption = (($slideshow_photo['caption'] || $resbook_id) ? '<div class="heroshot_overlay heroshot__caption"><div class="caption_container"><p class="heroshot__caption__text">'.$slideshow_photo['caption'].'</p></div>'.$booking_button.'</div>' : '');

            $slideshow_view .= '<div class="slider__img item" style="background-image: url('.$slideshow_photo['full_path'].');">
            '.$slideshow_caption.'</div>';  
        }

       }else{

         $slideshow_caption = (($slideshow_photo['caption'] || $resbook_id) ? '<div class="heroshot_overlay heroshot__caption_2"><div class="caption_container"><p class="heroshot__caption__text">'.$slideshow_photo['caption'].'</p></div>'.$booking_button.'</div>' : '');

        $slideshow_view .= '<div class="slider__img item" style="background-image: url('.$slideshow_photo['full_path'].');">
        '.$slideshow_caption.'</div>';  

       }
       
    }

    $slideshow_view = '<div id="slider-wrapper" class="slider-wrapper'.((!empty($is_home_page)) ? ' slider-wrapper--fs' : '' ).'">
        <div id="slider" class="slider">
            '.$slideshow_view.'
        </div><!-- /#slider -->
            '.$scroll_icon.'
    </div><!-- /#slider-wrapper -->';
}

?>
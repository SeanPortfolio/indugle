<?php

$ctaAccommDetailsBtnText = ACCOMMODATION_DETAILS_BTN;

$sql = "SELECT
		    a.`from_price`,
		    a.`beds`,
		    a.`sqm`,
		    a.`pax`,
		    pmd.`name`,
		    pmd.`short_description`,
		    pmd.`thumb_photo`,
		    pmd.`full_url`
		FROM
		    `accommodation` a
		LEFT JOIN `page_meta_data` pmd ON
		    (pmd.`id` = a.`page_meta_data_id`)
		WHERE
		    pmd.`status` = 'A'
		ORDER BY
		    pmd.`rank`";

$all_accom = fetch_all($sql);



if(!empty($all_accom))
{

	$index = 0;

	foreach ($all_accom as $accom) {
		
		$index++;
		if(($accom['sqm']==0)||($accom['sqm']=='0')||($accom['sqm']=='')){
			$hidde='style="display:none;"';
		}else{
			$hidde='';
		}
		if(($accom['from_price']==0)||($accom['from_price']=='0')||($accom['from_price']=='')){
			$hiddePrice='style="display:none;"';
		}else{
			$hiddePrice='';
		}
		$dollar='<i class="'.$currencyIcon.'" aria-hidden="true"></i>';
		$accom_items .= <<<H
			<div class="col-md-5 col-xs-12 col-lg-4 grid--row">	
			 <div class="ql">			
				<div class="row grid--row-image">						
					<a href="{$accom['full_url']}">
						<div class="hero-image" style="background-image:url('{$accom['thumb_photo']}');">
						</div>	
					</a>
				</div>
				<div class="row grid--row-content text-center">
					<div class="details">
						<h2 class="heading--outline heading--outline-center"><a href="{$accom['full_url']}">{$accom['name']}</a></h2>
						<p class="details__description">{$accom['short_description']}</p>
							<div class="row-container">
								<div class="quicklink-icons">
								    <span class="quicklink-icons__stats"> <i class="fa fa-bed"></i> {$accom['beds']}</span>
								    <span class="quicklink-icons__stats"><i class="fa fa-user"></i> {$accom['pax']}</span>
									<span class="quicklink-icons__stats" $hidde><i></i>SQM: {$accom['sqm']}</span>
								</div>
								<div class="price-quicklink" $hiddePrice>FROM: $dollar {$accom['from_price']}<span class="currency_text">{$ctaAccommDetailsBtnText}</span></div>
							</div>
						<p class="btn--wrapper btn-quicklink"><a class="btn btn-white-ghost" href="{$accom['full_url']}">{$ctaAccommDetailsBtnText}</a></p>
					</div>
				 </div>
				</div>
				
			</div><!--  end col -->
H;
	}

	$accom_list = <<<H
		<section class="section section--slate">
			<div class="container grid--wrapper">
			  <div class="quicklink-container">
				{$accom_items}
			  </div>
			</div>
		</section>

H;

	$tags_arr['mod_view'] = $accom_list;
}


?>
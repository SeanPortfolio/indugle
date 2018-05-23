<?php

$error_cls = ' has-error';

$motel_error_class = ($motel_error) ? $error_cls : '';
$fname_error_class = ($first_name_error) ? $error_cls : '';
$lname_error_class = ($last_name_error) ? $error_cls : '';
$email_error_class = ($email_address_error) ? $error_cls : '';
$captcha_error_class = ($captcha_error) ? $error_cls : '';
$tags_arr['js_code_head_close'] .= '<script src="https://www.google.com/recaptcha/api.js"></script>';

$output .= <<< H

<div class="col-xs-12 col-md-5 col-md-offset-1 contact-form-wrap">
    <p><span class="text-danger"><span class="text-danger">*</span></span> indicates required fields</p>
    <form action="{$fromroot}/{$page}" method="post" role="form" class="contact-us full-form">
        <fieldset> 
        <div class="twocol">
            <div class="form-group {$fname_error_class}">
                <label for="first-name" class="control-label">First Name<span class="text-danger">*</span></label>
                <input type="text" id="first-name" value="$first_name" class="form-control" name="first-name" tabindex="2" required>
                {$first_name_error_msg}
            </div>
            <div class="form-group {$lname_error_class}">
                <label for="last-name" class="control-label">Last Name<span class="text-danger">*</span></label>
                <input type="text" id="last-name" value="$last_name" class="form-control" name="last-name" tabindex="3" required>
                {$last_name_error_msg}
            </div>
            <div class="form-group {$email_error_class}">
                <label for="email-address" class="control-label">Email Address<span class="text-danger">*</span></label>
                <input type="email" id="email-address" value="$email_address" class="form-control" name="email-address" tabindex="4" required>
                {$email_address_error_msg}
            </div>
            <div class="form-group">
                <label for="contact-number" class="control-label">Phone/Mobile</label>
                <input type="tel" id="contact-number" class="form-control" value="$contact_number" name="contact-number" tabindex="5">
            </div>
        </div>
        <div class="twocol">
            <div class="form-group">
                <label for="message" class="control-label">Message</label>
                <textarea name="message" id="message" class="form-control" tabindex="6">{$message}</textarea>
            </div>
            <div class="form-group {$captcha_error_class}">
                <label></label>
                <div class="controls">
                   <div class="g-recaptcha" data-sitekey="6LdAdUoUAAAAAHUdi2z9UKrB6t9K2wm73eSRX6jZ"></div>
                    <span class="help-inline">{$captcha_error_msg}</span>
                </div>
            </div>
         <!--   <div class="form-group">
                <label></label>
                <div>
                <p>In order to assist us in reducing spam, please type the characters you see:</p>
                    <div style="margin-bottom:10px;"><img src="/captcha.jpg" alt="spam control image" id="anti-spam"></div>
                    <input type="text" value="" name="captcha" id="captcha-inp" class="form-control" style="width:120px" autocomplete="off" tabindex="7">
                    {$captcha_error_msg}
                </div>
            </div> -->
            <div class="form-group">
                <button type="submit" class="btn btn-brown submit-btn" name="continue" value="1" tabindex="8">Submit</button>
            </div>
        </div>
        </fieldset>
    </form>
</div>

H;


if( $tags_arr['content'] )
{
    $output = '<div class="col-xs-12 col-md-5">'.$tags_arr['content'].'</div>'.$output;
}

?>
<!DOCTYPE html>
<!-- saved from url=(0054)https://learn.sparkfun.com/tutorials/analog-vs-digital -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
          <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- mobile mode if small screen device -->
    
    <title>Analog vs. Digital - learn.sparkfun.com</title>

          <link rel="canonical" href="https://learn.sparkfun.com/tutorials/analog-vs-digital/all">
            
    <link href="./il_files/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./il_files/theme.github.css" type="text/css" media="screen">    <link rel="alternate" type="application/atom+xml" title="Education Blog" href="https://learn.sparkfun.com/feeds/blog">
    <link rel="alternate" type="application/atom+xml" title="Tutorials" href="https://learn.sparkfun.com/feeds/tutorials">
    <link rel="alternate" type="application/atom+xml" title="Education Blog Comments" href="https://learn.sparkfun.com/feeds/blog_comments">
    <link rel="alternate" type="application/atom+xml" title="Tutorial Comments" href="https://learn.sparkfun.com/feeds/tutorial_comments">
  <script type="text/javascript" async="" src="./il_files/recaptcha__es.js.download" crossorigin="anonymous" integrity="sha384-RLm8ZDkd3wH8G1w3b3qnPd6SLxWCMEHJqJ1sHrpQcHX2gQdXIryRuKpaND0MiaEZ"></script><script id="g-recaptcha-script" src="./il_files/api.js.download" async="" defer=""></script><style type="text/css" id="hs-form-style1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9">.fn-date-picker.pika-single{z-index:9999;display:block;position:relative;color:#333;background:#fff;border:1px solid #ccc;border-bottom-color:#bbb;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;*zoom:1}.fn-date-picker.pika-single.is-hidden{display:none}.fn-date-picker.pika-single.is-bound{position:absolute;box-shadow:0 5px 15px -5px rgba(0,0,0,.5)}.fn-date-picker.pika-single:after,.fn-date-picker.pika-single:before{content:" ";display:table}.fn-date-picker.pika-single:after{clear:both}.fn-date-picker .pika-lendar{float:left;width:240px;margin:8px}.fn-date-picker .pika-title{position:relative;text-align:center}.fn-date-picker .pika-title select{cursor:pointer;position:absolute;z-index:9998;margin:0;left:0;top:5px;filter:alpha(opacity=0);opacity:0}.fn-date-picker .pika-label{display:inline-block;*display:inline;position:relative;z-index:9999;overflow:hidden;margin:0;padding:5px 3px;font-size:14px;line-height:20px;font-weight:700;background-color:#fff}.fn-date-picker .pika-next,.fn-date-picker .pika-prev{display:block;cursor:pointer;position:relative;outline:none;border:0;padding:0;width:20px;height:30px;text-indent:20px;white-space:nowrap;overflow:hidden;background-color:transparent;background-position:50%;background-repeat:no-repeat;background-size:75% 75%;opacity:.5;*position:absolute;*top:0}.fn-date-picker .pika-next:hover,.fn-date-picker .pika-prev:hover{opacity:1}.fn-date-picker .pika-next.is-disabled,.fn-date-picker .pika-prev.is-disabled{cursor:default;opacity:.2}.fn-date-picker .is-rtl .pika-next,.fn-date-picker .pika-prev{float:left;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAeCAYAAAAsEj5rAAAAUklEQVR42u3VMQoAIBADQf8Pgj+OD9hG2CtONJB2ymQkKe0HbwAP0xucDiQWARITIDEBEnMgMQ8S8+AqBIl6kKgHiXqQqAeJepBo/z38J/U0uAHlaBkBl9I4GwAAAABJRU5ErkJggg==);*left:0}.fn-date-picker .is-rtl .pika-prev,.fn-date-picker .pika-next{float:right;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAeCAYAAAAsEj5rAAAAU0lEQVR42u3VOwoAMAgE0dwfAnNjU26bYkBCFGwfiL9VVWoO+BJ4Gf3gtsEKKoFBNTCoCAYVwaAiGNQGMUHMkjGbgjk2mIONuXo0nC8XnCf1JXgArVIZAQh5TKYAAAAASUVORK5CYII=);*right:0}.fn-date-picker .pika-select{display:inline-block;*display:inline}.fn-date-picker .pika-table{width:100%;border-collapse:collapse;border-spacing:0;border:0}.fn-date-picker .pika-table td,.fn-date-picker .pika-table th{width:14.285714285714286%;padding:0}.fn-date-picker .pika-table th{color:#999;font-size:12px;line-height:25px;font-weight:700;text-align:center}.fn-date-picker .pika-table abbr{border-bottom:none;cursor:help}.fn-date-picker .pika-button{cursor:pointer;display:block;-moz-box-sizing:border-box;box-sizing:border-box;outline:none;border:0;margin:0;width:100%;padding:5px;color:#666;font-size:12px;line-height:15px;text-align:right;background:#f5f5f5}.fn-date-picker .pika-button:hover{color:#fff!important;background:#ff8000!important;box-shadow:none!important;border-radius:3px!important}.fn-date-picker .is-today .pika-button{color:#3af;font-weight:700}.fn-date-picker .is-selected .pika-button{color:#fff;font-weight:700;background:#3af;box-shadow:inset 0 1px 3px #178fe5;border-radius:3px}.fn-date-picker .is-disabled .pika-button{pointer-events:none;cursor:default;color:#999;opacity:.3}.fn-date-picker .pika-week{font-size:11px;color:#999}

.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list li{vertical-align:top;display:inline-block;word-wrap:break-word;padding-right:16px}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list li:after{clear:both}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list li input{float:left}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list.inline-list-2 li{width:50%}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list.inline-list-2 li:nth-child(2n){padding-right:0}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list.inline-list-3 li{width:33%}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .inputs-list.inline-list.inline-list-3 li:nth-child(3n){width:34%;padding-right:0}.hs-fieldtype-intl-phone.hs-input{padding:0;background:none;border:none;height:auto}.hs-fieldtype-intl-phone.hs-input:after{clear:both;content:" ";display:table}.hs-fieldtype-intl-phone.hs-input .hs-input{margin-bottom:0}.hs-fieldtype-intl-phone.hs-input input{width:68%!important;float:right}.hs-fieldtype-intl-phone.hs-input select{float:left;width:30%!important}@media (max-device-width:480px) and (min-device-width:320px),(max-width:400px){.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9>.hs-phone>.input>.hs-fieldtype-intl-phone.hs-input>input.hs-input{width:68%!important}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9>.hs-phone>.input>.hs-fieldtype-intl-phone.hs-input>select.hs-input{width:30%!important}}.hs-input-range-container{width:95%}.hs-input-range-container div{display:inline-block;line-height:50px}.hs-input-range-container .hs-input-range{width:90%;height:40px}.hs-input-range-container .hs-input-range>*{vertical-align:middle}.hs-input-range-container .hs-input-range input{margin:0 5px;width:85%}.hs-input-range-container .hs-input-range-value-container{width:10%}.hs-input-range-container .hs-input{width:100%!important;margin-right:1px;background-color:#fff;text-align:center}.hs-input-range__slider{appearance:none;margin:0;height:30px;overflow:hidden;cursor:pointer}.hs-input-range__slider:focus{outline:none}.hs-input-range__slider::-webkit-slider-runnable-track{width:100%;height:30px;background:linear-gradient(180deg,#0199ff,#0199ff) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-webkit-slider-thumb{position:relative;appearance:none;height:13px;width:13px;background:#0199ff;border-radius:100%;border:0;top:50%;margin-top:-7.5px;box-shadow:1px 0 0 -5px #cfcfcf,2px 0 0 -5px #cfcfcf,3px 0 0 -5px #cfcfcf,4px 0 0 -5px #cfcfcf,5px 0 0 -5px #cfcfcf,6px 0 0 -5px #cfcfcf,7px 0 0 -5px #cfcfcf,8px 0 0 -5px #cfcfcf,9px 0 0 -5px #cfcfcf,10px 0 0 -5px #cfcfcf,11px 0 0 -5px #cfcfcf,12px 0 0 -5px #cfcfcf,13px 0 0 -5px #cfcfcf,14px 0 0 -5px #cfcfcf,15px 0 0 -5px #cfcfcf,16px 0 0 -5px #cfcfcf,17px 0 0 -5px #cfcfcf,18px 0 0 -5px #cfcfcf,19px 0 0 -5px #cfcfcf,20px 0 0 -5px #cfcfcf,21px 0 0 -5px #cfcfcf,22px 0 0 -5px #cfcfcf,23px 0 0 -5px #cfcfcf,24px 0 0 -5px #cfcfcf,25px 0 0 -5px #cfcfcf,26px 0 0 -5px #cfcfcf,27px 0 0 -5px #cfcfcf,28px 0 0 -5px #cfcfcf,29px 0 0 -5px #cfcfcf,30px 0 0 -5px #cfcfcf,31px 0 0 -5px #cfcfcf,32px 0 0 -5px #cfcfcf,33px 0 0 -5px #cfcfcf,34px 0 0 -5px #cfcfcf,35px 0 0 -5px #cfcfcf,36px 0 0 -5px #cfcfcf,37px 0 0 -5px #cfcfcf,38px 0 0 -5px #cfcfcf,39px 0 0 -5px #cfcfcf,40px 0 0 -5px #cfcfcf,41px 0 0 -5px #cfcfcf,42px 0 0 -5px #cfcfcf,43px 0 0 -5px #cfcfcf,44px 0 0 -5px #cfcfcf,45px 0 0 -5px #cfcfcf,46px 0 0 -5px #cfcfcf,47px 0 0 -5px #cfcfcf,48px 0 0 -5px #cfcfcf,49px 0 0 -5px #cfcfcf,50px 0 0 -5px #cfcfcf,51px 0 0 -5px #cfcfcf,52px 0 0 -5px #cfcfcf,53px 0 0 -5px #cfcfcf,54px 0 0 -5px #cfcfcf,55px 0 0 -5px #cfcfcf,56px 0 0 -5px #cfcfcf,57px 0 0 -5px #cfcfcf,58px 0 0 -5px #cfcfcf,59px 0 0 -5px #cfcfcf,60px 0 0 -5px #cfcfcf,61px 0 0 -5px #cfcfcf,62px 0 0 -5px #cfcfcf,63px 0 0 -5px #cfcfcf,64px 0 0 -5px #cfcfcf,65px 0 0 -5px #cfcfcf,66px 0 0 -5px #cfcfcf,67px 0 0 -5px #cfcfcf,68px 0 0 -5px #cfcfcf,69px 0 0 -5px #cfcfcf,70px 0 0 -5px #cfcfcf,71px 0 0 -5px #cfcfcf,72px 0 0 -5px #cfcfcf,73px 0 0 -5px #cfcfcf,74px 0 0 -5px #cfcfcf,75px 0 0 -5px #cfcfcf,76px 0 0 -5px #cfcfcf,77px 0 0 -5px #cfcfcf,78px 0 0 -5px #cfcfcf,79px 0 0 -5px #cfcfcf,80px 0 0 -5px #cfcfcf,81px 0 0 -5px #cfcfcf,82px 0 0 -5px #cfcfcf,83px 0 0 -5px #cfcfcf,84px 0 0 -5px #cfcfcf,85px 0 0 -5px #cfcfcf,86px 0 0 -5px #cfcfcf,87px 0 0 -5px #cfcfcf,88px 0 0 -5px #cfcfcf,89px 0 0 -5px #cfcfcf,90px 0 0 -5px #cfcfcf,91px 0 0 -5px #cfcfcf,92px 0 0 -5px #cfcfcf,93px 0 0 -5px #cfcfcf,94px 0 0 -5px #cfcfcf,95px 0 0 -5px #cfcfcf,96px 0 0 -5px #cfcfcf,97px 0 0 -5px #cfcfcf,98px 0 0 -5px #cfcfcf,99px 0 0 -5px #cfcfcf,100px 0 0 -5px #cfcfcf,101px 0 0 -5px #cfcfcf,102px 0 0 -5px #cfcfcf,103px 0 0 -5px #cfcfcf,104px 0 0 -5px #cfcfcf,105px 0 0 -5px #cfcfcf,106px 0 0 -5px #cfcfcf,107px 0 0 -5px #cfcfcf,108px 0 0 -5px #cfcfcf,109px 0 0 -5px #cfcfcf,110px 0 0 -5px #cfcfcf,111px 0 0 -5px #cfcfcf,112px 0 0 -5px #cfcfcf,113px 0 0 -5px #cfcfcf,114px 0 0 -5px #cfcfcf,115px 0 0 -5px #cfcfcf,116px 0 0 -5px #cfcfcf,117px 0 0 -5px #cfcfcf,118px 0 0 -5px #cfcfcf,119px 0 0 -5px #cfcfcf,120px 0 0 -5px #cfcfcf,121px 0 0 -5px #cfcfcf,122px 0 0 -5px #cfcfcf,123px 0 0 -5px #cfcfcf,124px 0 0 -5px #cfcfcf,125px 0 0 -5px #cfcfcf,126px 0 0 -5px #cfcfcf,127px 0 0 -5px #cfcfcf,128px 0 0 -5px #cfcfcf,129px 0 0 -5px #cfcfcf,130px 0 0 -5px #cfcfcf,131px 0 0 -5px #cfcfcf,132px 0 0 -5px #cfcfcf,133px 0 0 -5px #cfcfcf,134px 0 0 -5px #cfcfcf,135px 0 0 -5px #cfcfcf,136px 0 0 -5px #cfcfcf,137px 0 0 -5px #cfcfcf,138px 0 0 -5px #cfcfcf,139px 0 0 -5px #cfcfcf,140px 0 0 -5px #cfcfcf,141px 0 0 -5px #cfcfcf,142px 0 0 -5px #cfcfcf,143px 0 0 -5px #cfcfcf,144px 0 0 -5px #cfcfcf,145px 0 0 -5px #cfcfcf,146px 0 0 -5px #cfcfcf,147px 0 0 -5px #cfcfcf,148px 0 0 -5px #cfcfcf,149px 0 0 -5px #cfcfcf,150px 0 0 -5px #cfcfcf,151px 0 0 -5px #cfcfcf,152px 0 0 -5px #cfcfcf,153px 0 0 -5px #cfcfcf,154px 0 0 -5px #cfcfcf,155px 0 0 -5px #cfcfcf,156px 0 0 -5px #cfcfcf,157px 0 0 -5px #cfcfcf,158px 0 0 -5px #cfcfcf,159px 0 0 -5px #cfcfcf,160px 0 0 -5px #cfcfcf,161px 0 0 -5px #cfcfcf,162px 0 0 -5px #cfcfcf,163px 0 0 -5px #cfcfcf,164px 0 0 -5px #cfcfcf,165px 0 0 -5px #cfcfcf,166px 0 0 -5px #cfcfcf,167px 0 0 -5px #cfcfcf,168px 0 0 -5px #cfcfcf,169px 0 0 -5px #cfcfcf,170px 0 0 -5px #cfcfcf,171px 0 0 -5px #cfcfcf,172px 0 0 -5px #cfcfcf,173px 0 0 -5px #cfcfcf,174px 0 0 -5px #cfcfcf,175px 0 0 -5px #cfcfcf,176px 0 0 -5px #cfcfcf,177px 0 0 -5px #cfcfcf,178px 0 0 -5px #cfcfcf,179px 0 0 -5px #cfcfcf,180px 0 0 -5px #cfcfcf,181px 0 0 -5px #cfcfcf,182px 0 0 -5px #cfcfcf,183px 0 0 -5px #cfcfcf,184px 0 0 -5px #cfcfcf,185px 0 0 -5px #cfcfcf,186px 0 0 -5px #cfcfcf,187px 0 0 -5px #cfcfcf,188px 0 0 -5px #cfcfcf,189px 0 0 -5px #cfcfcf,190px 0 0 -5px #cfcfcf,191px 0 0 -5px #cfcfcf,192px 0 0 -5px #cfcfcf,193px 0 0 -5px #cfcfcf,194px 0 0 -5px #cfcfcf,195px 0 0 -5px #cfcfcf,196px 0 0 -5px #cfcfcf,197px 0 0 -5px #cfcfcf,198px 0 0 -5px #cfcfcf,199px 0 0 -5px #cfcfcf,200px 0 0 -5px #cfcfcf,201px 0 0 -5px #cfcfcf,202px 0 0 -5px #cfcfcf,203px 0 0 -5px #cfcfcf,204px 0 0 -5px #cfcfcf,205px 0 0 -5px #cfcfcf,206px 0 0 -5px #cfcfcf,207px 0 0 -5px #cfcfcf,208px 0 0 -5px #cfcfcf,209px 0 0 -5px #cfcfcf,210px 0 0 -5px #cfcfcf,211px 0 0 -5px #cfcfcf,212px 0 0 -5px #cfcfcf,213px 0 0 -5px #cfcfcf,214px 0 0 -5px #cfcfcf,215px 0 0 -5px #cfcfcf,216px 0 0 -5px #cfcfcf,217px 0 0 -5px #cfcfcf,218px 0 0 -5px #cfcfcf,219px 0 0 -5px #cfcfcf,220px 0 0 -5px #cfcfcf,221px 0 0 -5px #cfcfcf,222px 0 0 -5px #cfcfcf,223px 0 0 -5px #cfcfcf,224px 0 0 -5px #cfcfcf,225px 0 0 -5px #cfcfcf,226px 0 0 -5px #cfcfcf,227px 0 0 -5px #cfcfcf,228px 0 0 -5px #cfcfcf,229px 0 0 -5px #cfcfcf,230px 0 0 -5px #cfcfcf,231px 0 0 -5px #cfcfcf,232px 0 0 -5px #cfcfcf,233px 0 0 -5px #cfcfcf,234px 0 0 -5px #cfcfcf,235px 0 0 -5px #cfcfcf,236px 0 0 -5px #cfcfcf,237px 0 0 -5px #cfcfcf,238px 0 0 -5px #cfcfcf,239px 0 0 -5px #cfcfcf,240px 0 0 -5px #cfcfcf,241px 0 0 -5px #cfcfcf,242px 0 0 -5px #cfcfcf,243px 0 0 -5px #cfcfcf,244px 0 0 -5px #cfcfcf,245px 0 0 -5px #cfcfcf,246px 0 0 -5px #cfcfcf,247px 0 0 -5px #cfcfcf,248px 0 0 -5px #cfcfcf,249px 0 0 -5px #cfcfcf,250px 0 0 -5px #cfcfcf,251px 0 0 -5px #cfcfcf,252px 0 0 -5px #cfcfcf,253px 0 0 -5px #cfcfcf,254px 0 0 -5px #cfcfcf,255px 0 0 -5px #cfcfcf,256px 0 0 -5px #cfcfcf,257px 0 0 -5px #cfcfcf,258px 0 0 -5px #cfcfcf,259px 0 0 -5px #cfcfcf,260px 0 0 -5px #cfcfcf,261px 0 0 -5px #cfcfcf,262px 0 0 -5px #cfcfcf,263px 0 0 -5px #cfcfcf,264px 0 0 -5px #cfcfcf,265px 0 0 -5px #cfcfcf,266px 0 0 -5px #cfcfcf,267px 0 0 -5px #cfcfcf,268px 0 0 -5px #cfcfcf,269px 0 0 -5px #cfcfcf,270px 0 0 -5px #cfcfcf,271px 0 0 -5px #cfcfcf,272px 0 0 -5px #cfcfcf,273px 0 0 -5px #cfcfcf,274px 0 0 -5px #cfcfcf,275px 0 0 -5px #cfcfcf,276px 0 0 -5px #cfcfcf,277px 0 0 -5px #cfcfcf,278px 0 0 -5px #cfcfcf,279px 0 0 -5px #cfcfcf,280px 0 0 -5px #cfcfcf,281px 0 0 -5px #cfcfcf,282px 0 0 -5px #cfcfcf,283px 0 0 -5px #cfcfcf,284px 0 0 -5px #cfcfcf,285px 0 0 -5px #cfcfcf,286px 0 0 -5px #cfcfcf,287px 0 0 -5px #cfcfcf,288px 0 0 -5px #cfcfcf,289px 0 0 -5px #cfcfcf,290px 0 0 -5px #cfcfcf,291px 0 0 -5px #cfcfcf,292px 0 0 -5px #cfcfcf,293px 0 0 -5px #cfcfcf,294px 0 0 -5px #cfcfcf,295px 0 0 -5px #cfcfcf,296px 0 0 -5px #cfcfcf,297px 0 0 -5px #cfcfcf,298px 0 0 -5px #cfcfcf,299px 0 0 -5px #cfcfcf,300px 0 0 -5px #cfcfcf,301px 0 0 -5px #cfcfcf,302px 0 0 -5px #cfcfcf,303px 0 0 -5px #cfcfcf,304px 0 0 -5px #cfcfcf,305px 0 0 -5px #cfcfcf,306px 0 0 -5px #cfcfcf,307px 0 0 -5px #cfcfcf,308px 0 0 -5px #cfcfcf,309px 0 0 -5px #cfcfcf,310px 0 0 -5px #cfcfcf,311px 0 0 -5px #cfcfcf,312px 0 0 -5px #cfcfcf,313px 0 0 -5px #cfcfcf,314px 0 0 -5px #cfcfcf,315px 0 0 -5px #cfcfcf,316px 0 0 -5px #cfcfcf,317px 0 0 -5px #cfcfcf,318px 0 0 -5px #cfcfcf,319px 0 0 -5px #cfcfcf,320px 0 0 -5px #cfcfcf,321px 0 0 -5px #cfcfcf,322px 0 0 -5px #cfcfcf,323px 0 0 -5px #cfcfcf,324px 0 0 -5px #cfcfcf,325px 0 0 -5px #cfcfcf,326px 0 0 -5px #cfcfcf,327px 0 0 -5px #cfcfcf,328px 0 0 -5px #cfcfcf,329px 0 0 -5px #cfcfcf,330px 0 0 -5px #cfcfcf,331px 0 0 -5px #cfcfcf,332px 0 0 -5px #cfcfcf,333px 0 0 -5px #cfcfcf,334px 0 0 -5px #cfcfcf,335px 0 0 -5px #cfcfcf,336px 0 0 -5px #cfcfcf,337px 0 0 -5px #cfcfcf,338px 0 0 -5px #cfcfcf,339px 0 0 -5px #cfcfcf,340px 0 0 -5px #cfcfcf,341px 0 0 -5px #cfcfcf,342px 0 0 -5px #cfcfcf,343px 0 0 -5px #cfcfcf,344px 0 0 -5px #cfcfcf,345px 0 0 -5px #cfcfcf,346px 0 0 -5px #cfcfcf,347px 0 0 -5px #cfcfcf,348px 0 0 -5px #cfcfcf,349px 0 0 -5px #cfcfcf,350px 0 0 -5px #cfcfcf,351px 0 0 -5px #cfcfcf,352px 0 0 -5px #cfcfcf,353px 0 0 -5px #cfcfcf,354px 0 0 -5px #cfcfcf,355px 0 0 -5px #cfcfcf,356px 0 0 -5px #cfcfcf,357px 0 0 -5px #cfcfcf,358px 0 0 -5px #cfcfcf,359px 0 0 -5px #cfcfcf,360px 0 0 -5px #cfcfcf,361px 0 0 -5px #cfcfcf,362px 0 0 -5px #cfcfcf,363px 0 0 -5px #cfcfcf,364px 0 0 -5px #cfcfcf,365px 0 0 -5px #cfcfcf,366px 0 0 -5px #cfcfcf,367px 0 0 -5px #cfcfcf,368px 0 0 -5px #cfcfcf,369px 0 0 -5px #cfcfcf,370px 0 0 -5px #cfcfcf,371px 0 0 -5px #cfcfcf,372px 0 0 -5px #cfcfcf,373px 0 0 -5px #cfcfcf,374px 0 0 -5px #cfcfcf,375px 0 0 -5px #cfcfcf,376px 0 0 -5px #cfcfcf,377px 0 0 -5px #cfcfcf,378px 0 0 -5px #cfcfcf,379px 0 0 -5px #cfcfcf,380px 0 0 -5px #cfcfcf,381px 0 0 -5px #cfcfcf,382px 0 0 -5px #cfcfcf,383px 0 0 -5px #cfcfcf,384px 0 0 -5px #cfcfcf,385px 0 0 -5px #cfcfcf,386px 0 0 -5px #cfcfcf,387px 0 0 -5px #cfcfcf,388px 0 0 -5px #cfcfcf,389px 0 0 -5px #cfcfcf,390px 0 0 -5px #cfcfcf,391px 0 0 -5px #cfcfcf,392px 0 0 -5px #cfcfcf,393px 0 0 -5px #cfcfcf,394px 0 0 -5px #cfcfcf,395px 0 0 -5px #cfcfcf,396px 0 0 -5px #cfcfcf,397px 0 0 -5px #cfcfcf,398px 0 0 -5px #cfcfcf,399px 0 0 -5px #cfcfcf,400px 0 0 -5px #cfcfcf,401px 0 0 -5px #cfcfcf,402px 0 0 -5px #cfcfcf,403px 0 0 -5px #cfcfcf,404px 0 0 -5px #cfcfcf,405px 0 0 -5px #cfcfcf,406px 0 0 -5px #cfcfcf,407px 0 0 -5px #cfcfcf,408px 0 0 -5px #cfcfcf,409px 0 0 -5px #cfcfcf,410px 0 0 -5px #cfcfcf,411px 0 0 -5px #cfcfcf,412px 0 0 -5px #cfcfcf,413px 0 0 -5px #cfcfcf,414px 0 0 -5px #cfcfcf,415px 0 0 -5px #cfcfcf,416px 0 0 -5px #cfcfcf,417px 0 0 -5px #cfcfcf,418px 0 0 -5px #cfcfcf,419px 0 0 -5px #cfcfcf,420px 0 0 -5px #cfcfcf,421px 0 0 -5px #cfcfcf,422px 0 0 -5px #cfcfcf,423px 0 0 -5px #cfcfcf,424px 0 0 -5px #cfcfcf,425px 0 0 -5px #cfcfcf,426px 0 0 -5px #cfcfcf,427px 0 0 -5px #cfcfcf,428px 0 0 -5px #cfcfcf,429px 0 0 -5px #cfcfcf,430px 0 0 -5px #cfcfcf,431px 0 0 -5px #cfcfcf,432px 0 0 -5px #cfcfcf,433px 0 0 -5px #cfcfcf,434px 0 0 -5px #cfcfcf,435px 0 0 -5px #cfcfcf,436px 0 0 -5px #cfcfcf,437px 0 0 -5px #cfcfcf,438px 0 0 -5px #cfcfcf,439px 0 0 -5px #cfcfcf,440px 0 0 -5px #cfcfcf,441px 0 0 -5px #cfcfcf,442px 0 0 -5px #cfcfcf,443px 0 0 -5px #cfcfcf,444px 0 0 -5px #cfcfcf,445px 0 0 -5px #cfcfcf,446px 0 0 -5px #cfcfcf,447px 0 0 -5px #cfcfcf,448px 0 0 -5px #cfcfcf,449px 0 0 -5px #cfcfcf,450px 0 0 -5px #cfcfcf,451px 0 0 -5px #cfcfcf,452px 0 0 -5px #cfcfcf,453px 0 0 -5px #cfcfcf,454px 0 0 -5px #cfcfcf,455px 0 0 -5px #cfcfcf,456px 0 0 -5px #cfcfcf,457px 0 0 -5px #cfcfcf,458px 0 0 -5px #cfcfcf,459px 0 0 -5px #cfcfcf,460px 0 0 -5px #cfcfcf,461px 0 0 -5px #cfcfcf,462px 0 0 -5px #cfcfcf,463px 0 0 -5px #cfcfcf,464px 0 0 -5px #cfcfcf,465px 0 0 -5px #cfcfcf,466px 0 0 -5px #cfcfcf,467px 0 0 -5px #cfcfcf,468px 0 0 -5px #cfcfcf,469px 0 0 -5px #cfcfcf,470px 0 0 -5px #cfcfcf,471px 0 0 -5px #cfcfcf,472px 0 0 -5px #cfcfcf,473px 0 0 -5px #cfcfcf,474px 0 0 -5px #cfcfcf,475px 0 0 -5px #cfcfcf,476px 0 0 -5px #cfcfcf,477px 0 0 -5px #cfcfcf,478px 0 0 -5px #cfcfcf,479px 0 0 -5px #cfcfcf,480px 0 0 -5px #cfcfcf,481px 0 0 -5px #cfcfcf,482px 0 0 -5px #cfcfcf,483px 0 0 -5px #cfcfcf,484px 0 0 -5px #cfcfcf,485px 0 0 -5px #cfcfcf,486px 0 0 -5px #cfcfcf,487px 0 0 -5px #cfcfcf,488px 0 0 -5px #cfcfcf,489px 0 0 -5px #cfcfcf,490px 0 0 -5px #cfcfcf,491px 0 0 -5px #cfcfcf,492px 0 0 -5px #cfcfcf,493px 0 0 -5px #cfcfcf,494px 0 0 -5px #cfcfcf,495px 0 0 -5px #cfcfcf,496px 0 0 -5px #cfcfcf,497px 0 0 -5px #cfcfcf,498px 0 0 -5px #cfcfcf,499px 0 0 -5px #cfcfcf,500px 0 0 -5px #cfcfcf,501px 0 0 -5px #cfcfcf,502px 0 0 -5px #cfcfcf,503px 0 0 -5px #cfcfcf,504px 0 0 -5px #cfcfcf,505px 0 0 -5px #cfcfcf,506px 0 0 -5px #cfcfcf,507px 0 0 -5px #cfcfcf,508px 0 0 -5px #cfcfcf,509px 0 0 -5px #cfcfcf,510px 0 0 -5px #cfcfcf,511px 0 0 -5px #cfcfcf,512px 0 0 -5px #cfcfcf,513px 0 0 -5px #cfcfcf,514px 0 0 -5px #cfcfcf,515px 0 0 -5px #cfcfcf,516px 0 0 -5px #cfcfcf,517px 0 0 -5px #cfcfcf,518px 0 0 -5px #cfcfcf,519px 0 0 -5px #cfcfcf,520px 0 0 -5px #cfcfcf,521px 0 0 -5px #cfcfcf,522px 0 0 -5px #cfcfcf,523px 0 0 -5px #cfcfcf,524px 0 0 -5px #cfcfcf,525px 0 0 -5px #cfcfcf,526px 0 0 -5px #cfcfcf,527px 0 0 -5px #cfcfcf,528px 0 0 -5px #cfcfcf,529px 0 0 -5px #cfcfcf,530px 0 0 -5px #cfcfcf,531px 0 0 -5px #cfcfcf,532px 0 0 -5px #cfcfcf,533px 0 0 -5px #cfcfcf,534px 0 0 -5px #cfcfcf,535px 0 0 -5px #cfcfcf,536px 0 0 -5px #cfcfcf,537px 0 0 -5px #cfcfcf,538px 0 0 -5px #cfcfcf,539px 0 0 -5px #cfcfcf,540px 0 0 -5px #cfcfcf,541px 0 0 -5px #cfcfcf,542px 0 0 -5px #cfcfcf,543px 0 0 -5px #cfcfcf,544px 0 0 -5px #cfcfcf,545px 0 0 -5px #cfcfcf,546px 0 0 -5px #cfcfcf,547px 0 0 -5px #cfcfcf,548px 0 0 -5px #cfcfcf,549px 0 0 -5px #cfcfcf,550px 0 0 -5px #cfcfcf,551px 0 0 -5px #cfcfcf,552px 0 0 -5px #cfcfcf,553px 0 0 -5px #cfcfcf,554px 0 0 -5px #cfcfcf,555px 0 0 -5px #cfcfcf,556px 0 0 -5px #cfcfcf,557px 0 0 -5px #cfcfcf,558px 0 0 -5px #cfcfcf,559px 0 0 -5px #cfcfcf,560px 0 0 -5px #cfcfcf,561px 0 0 -5px #cfcfcf,562px 0 0 -5px #cfcfcf,563px 0 0 -5px #cfcfcf,564px 0 0 -5px #cfcfcf,565px 0 0 -5px #cfcfcf,566px 0 0 -5px #cfcfcf,567px 0 0 -5px #cfcfcf,568px 0 0 -5px #cfcfcf,569px 0 0 -5px #cfcfcf,570px 0 0 -5px #cfcfcf,571px 0 0 -5px #cfcfcf,572px 0 0 -5px #cfcfcf,573px 0 0 -5px #cfcfcf,574px 0 0 -5px #cfcfcf,575px 0 0 -5px #cfcfcf,576px 0 0 -5px #cfcfcf,577px 0 0 -5px #cfcfcf,578px 0 0 -5px #cfcfcf,579px 0 0 -5px #cfcfcf,580px 0 0 -5px #cfcfcf,581px 0 0 -5px #cfcfcf,582px 0 0 -5px #cfcfcf,583px 0 0 -5px #cfcfcf,584px 0 0 -5px #cfcfcf,585px 0 0 -5px #cfcfcf,586px 0 0 -5px #cfcfcf,587px 0 0 -5px #cfcfcf,588px 0 0 -5px #cfcfcf,589px 0 0 -5px #cfcfcf,590px 0 0 -5px #cfcfcf,591px 0 0 -5px #cfcfcf,592px 0 0 -5px #cfcfcf,593px 0 0 -5px #cfcfcf,594px 0 0 -5px #cfcfcf,595px 0 0 -5px #cfcfcf,596px 0 0 -5px #cfcfcf,597px 0 0 -5px #cfcfcf,598px 0 0 -5px #cfcfcf,599px 0 0 -5px #cfcfcf,600px 0 0 -5px #cfcfcf,601px 0 0 -5px #cfcfcf,602px 0 0 -5px #cfcfcf,603px 0 0 -5px #cfcfcf,604px 0 0 -5px #cfcfcf,605px 0 0 -5px #cfcfcf,606px 0 0 -5px #cfcfcf,607px 0 0 -5px #cfcfcf,608px 0 0 -5px #cfcfcf,609px 0 0 -5px #cfcfcf,610px 0 0 -5px #cfcfcf,611px 0 0 -5px #cfcfcf,612px 0 0 -5px #cfcfcf,613px 0 0 -5px #cfcfcf,614px 0 0 -5px #cfcfcf,615px 0 0 -5px #cfcfcf,616px 0 0 -5px #cfcfcf,617px 0 0 -5px #cfcfcf,618px 0 0 -5px #cfcfcf,619px 0 0 -5px #cfcfcf,620px 0 0 -5px #cfcfcf,621px 0 0 -5px #cfcfcf,622px 0 0 -5px #cfcfcf,623px 0 0 -5px #cfcfcf,624px 0 0 -5px #cfcfcf,625px 0 0 -5px #cfcfcf,626px 0 0 -5px #cfcfcf,627px 0 0 -5px #cfcfcf,628px 0 0 -5px #cfcfcf,629px 0 0 -5px #cfcfcf,630px 0 0 -5px #cfcfcf,631px 0 0 -5px #cfcfcf,632px 0 0 -5px #cfcfcf,633px 0 0 -5px #cfcfcf,634px 0 0 -5px #cfcfcf,635px 0 0 -5px #cfcfcf,636px 0 0 -5px #cfcfcf,637px 0 0 -5px #cfcfcf,638px 0 0 -5px #cfcfcf,639px 0 0 -5px #cfcfcf,640px 0 0 -5px #cfcfcf,641px 0 0 -5px #cfcfcf,642px 0 0 -5px #cfcfcf,643px 0 0 -5px #cfcfcf,644px 0 0 -5px #cfcfcf,645px 0 0 -5px #cfcfcf,646px 0 0 -5px #cfcfcf,647px 0 0 -5px #cfcfcf,648px 0 0 -5px #cfcfcf,649px 0 0 -5px #cfcfcf,650px 0 0 -5px #cfcfcf,651px 0 0 -5px #cfcfcf,652px 0 0 -5px #cfcfcf,653px 0 0 -5px #cfcfcf,654px 0 0 -5px #cfcfcf,655px 0 0 -5px #cfcfcf,656px 0 0 -5px #cfcfcf,657px 0 0 -5px #cfcfcf,658px 0 0 -5px #cfcfcf,659px 0 0 -5px #cfcfcf,660px 0 0 -5px #cfcfcf,661px 0 0 -5px #cfcfcf,662px 0 0 -5px #cfcfcf,663px 0 0 -5px #cfcfcf,664px 0 0 -5px #cfcfcf,665px 0 0 -5px #cfcfcf,666px 0 0 -5px #cfcfcf,667px 0 0 -5px #cfcfcf,668px 0 0 -5px #cfcfcf,669px 0 0 -5px #cfcfcf,670px 0 0 -5px #cfcfcf,671px 0 0 -5px #cfcfcf,672px 0 0 -5px #cfcfcf,673px 0 0 -5px #cfcfcf,674px 0 0 -5px #cfcfcf,675px 0 0 -5px #cfcfcf,676px 0 0 -5px #cfcfcf,677px 0 0 -5px #cfcfcf,678px 0 0 -5px #cfcfcf,679px 0 0 -5px #cfcfcf,680px 0 0 -5px #cfcfcf,681px 0 0 -5px #cfcfcf,682px 0 0 -5px #cfcfcf,683px 0 0 -5px #cfcfcf,684px 0 0 -5px #cfcfcf,685px 0 0 -5px #cfcfcf,686px 0 0 -5px #cfcfcf,687px 0 0 -5px #cfcfcf,688px 0 0 -5px #cfcfcf,689px 0 0 -5px #cfcfcf,690px 0 0 -5px #cfcfcf,691px 0 0 -5px #cfcfcf,692px 0 0 -5px #cfcfcf,693px 0 0 -5px #cfcfcf,694px 0 0 -5px #cfcfcf,695px 0 0 -5px #cfcfcf,696px 0 0 -5px #cfcfcf,697px 0 0 -5px #cfcfcf,698px 0 0 -5px #cfcfcf,699px 0 0 -5px #cfcfcf,700px 0 0 -5px #cfcfcf,701px 0 0 -5px #cfcfcf,702px 0 0 -5px #cfcfcf,703px 0 0 -5px #cfcfcf,704px 0 0 -5px #cfcfcf,705px 0 0 -5px #cfcfcf,706px 0 0 -5px #cfcfcf,707px 0 0 -5px #cfcfcf,708px 0 0 -5px #cfcfcf,709px 0 0 -5px #cfcfcf,710px 0 0 -5px #cfcfcf,711px 0 0 -5px #cfcfcf,712px 0 0 -5px #cfcfcf,713px 0 0 -5px #cfcfcf,714px 0 0 -5px #cfcfcf,715px 0 0 -5px #cfcfcf,716px 0 0 -5px #cfcfcf,717px 0 0 -5px #cfcfcf,718px 0 0 -5px #cfcfcf,719px 0 0 -5px #cfcfcf,720px 0 0 -5px #cfcfcf,721px 0 0 -5px #cfcfcf,722px 0 0 -5px #cfcfcf,723px 0 0 -5px #cfcfcf,724px 0 0 -5px #cfcfcf,725px 0 0 -5px #cfcfcf,726px 0 0 -5px #cfcfcf,727px 0 0 -5px #cfcfcf,728px 0 0 -5px #cfcfcf,729px 0 0 -5px #cfcfcf,730px 0 0 -5px #cfcfcf,731px 0 0 -5px #cfcfcf,732px 0 0 -5px #cfcfcf,733px 0 0 -5px #cfcfcf,734px 0 0 -5px #cfcfcf,735px 0 0 -5px #cfcfcf,736px 0 0 -5px #cfcfcf,737px 0 0 -5px #cfcfcf,738px 0 0 -5px #cfcfcf,739px 0 0 -5px #cfcfcf,740px 0 0 -5px #cfcfcf,741px 0 0 -5px #cfcfcf,742px 0 0 -5px #cfcfcf,743px 0 0 -5px #cfcfcf,744px 0 0 -5px #cfcfcf,745px 0 0 -5px #cfcfcf,746px 0 0 -5px #cfcfcf,747px 0 0 -5px #cfcfcf,748px 0 0 -5px #cfcfcf,749px 0 0 -5px #cfcfcf,750px 0 0 -5px #cfcfcf,751px 0 0 -5px #cfcfcf,752px 0 0 -5px #cfcfcf,753px 0 0 -5px #cfcfcf,754px 0 0 -5px #cfcfcf,755px 0 0 -5px #cfcfcf,756px 0 0 -5px #cfcfcf,757px 0 0 -5px #cfcfcf,758px 0 0 -5px #cfcfcf,759px 0 0 -5px #cfcfcf,760px 0 0 -5px #cfcfcf,761px 0 0 -5px #cfcfcf,762px 0 0 -5px #cfcfcf,763px 0 0 -5px #cfcfcf,764px 0 0 -5px #cfcfcf,765px 0 0 -5px #cfcfcf,766px 0 0 -5px #cfcfcf,767px 0 0 -5px #cfcfcf,768px 0 0 -5px #cfcfcf,769px 0 0 -5px #cfcfcf,770px 0 0 -5px #cfcfcf,771px 0 0 -5px #cfcfcf,772px 0 0 -5px #cfcfcf,773px 0 0 -5px #cfcfcf,774px 0 0 -5px #cfcfcf,775px 0 0 -5px #cfcfcf,776px 0 0 -5px #cfcfcf,777px 0 0 -5px #cfcfcf,778px 0 0 -5px #cfcfcf,779px 0 0 -5px #cfcfcf,780px 0 0 -5px #cfcfcf,781px 0 0 -5px #cfcfcf,782px 0 0 -5px #cfcfcf,783px 0 0 -5px #cfcfcf,784px 0 0 -5px #cfcfcf,785px 0 0 -5px #cfcfcf,786px 0 0 -5px #cfcfcf,787px 0 0 -5px #cfcfcf,788px 0 0 -5px #cfcfcf,789px 0 0 -5px #cfcfcf,790px 0 0 -5px #cfcfcf,791px 0 0 -5px #cfcfcf,792px 0 0 -5px #cfcfcf,793px 0 0 -5px #cfcfcf,794px 0 0 -5px #cfcfcf,795px 0 0 -5px #cfcfcf,796px 0 0 -5px #cfcfcf,797px 0 0 -5px #cfcfcf,798px 0 0 -5px #cfcfcf,799px 0 0 -5px #cfcfcf,800px 0 0 -5px #cfcfcf,801px 0 0 -5px #cfcfcf,802px 0 0 -5px #cfcfcf,803px 0 0 -5px #cfcfcf,804px 0 0 -5px #cfcfcf,805px 0 0 -5px #cfcfcf,806px 0 0 -5px #cfcfcf,807px 0 0 -5px #cfcfcf,808px 0 0 -5px #cfcfcf,809px 0 0 -5px #cfcfcf,810px 0 0 -5px #cfcfcf,811px 0 0 -5px #cfcfcf,812px 0 0 -5px #cfcfcf,813px 0 0 -5px #cfcfcf,814px 0 0 -5px #cfcfcf,815px 0 0 -5px #cfcfcf,816px 0 0 -5px #cfcfcf,817px 0 0 -5px #cfcfcf,818px 0 0 -5px #cfcfcf,819px 0 0 -5px #cfcfcf,820px 0 0 -5px #cfcfcf,821px 0 0 -5px #cfcfcf,822px 0 0 -5px #cfcfcf,823px 0 0 -5px #cfcfcf,824px 0 0 -5px #cfcfcf,825px 0 0 -5px #cfcfcf,826px 0 0 -5px #cfcfcf,827px 0 0 -5px #cfcfcf,828px 0 0 -5px #cfcfcf,829px 0 0 -5px #cfcfcf,830px 0 0 -5px #cfcfcf,831px 0 0 -5px #cfcfcf,832px 0 0 -5px #cfcfcf,833px 0 0 -5px #cfcfcf,834px 0 0 -5px #cfcfcf,835px 0 0 -5px #cfcfcf,836px 0 0 -5px #cfcfcf,837px 0 0 -5px #cfcfcf,838px 0 0 -5px #cfcfcf,839px 0 0 -5px #cfcfcf,840px 0 0 -5px #cfcfcf,841px 0 0 -5px #cfcfcf,842px 0 0 -5px #cfcfcf,843px 0 0 -5px #cfcfcf,844px 0 0 -5px #cfcfcf,845px 0 0 -5px #cfcfcf,846px 0 0 -5px #cfcfcf,847px 0 0 -5px #cfcfcf,848px 0 0 -5px #cfcfcf,849px 0 0 -5px #cfcfcf,850px 0 0 -5px #cfcfcf,851px 0 0 -5px #cfcfcf,852px 0 0 -5px #cfcfcf,853px 0 0 -5px #cfcfcf,854px 0 0 -5px #cfcfcf,855px 0 0 -5px #cfcfcf,856px 0 0 -5px #cfcfcf,857px 0 0 -5px #cfcfcf,858px 0 0 -5px #cfcfcf,859px 0 0 -5px #cfcfcf,860px 0 0 -5px #cfcfcf,861px 0 0 -5px #cfcfcf,862px 0 0 -5px #cfcfcf,863px 0 0 -5px #cfcfcf,864px 0 0 -5px #cfcfcf,865px 0 0 -5px #cfcfcf,866px 0 0 -5px #cfcfcf,867px 0 0 -5px #cfcfcf,868px 0 0 -5px #cfcfcf,869px 0 0 -5px #cfcfcf,870px 0 0 -5px #cfcfcf,871px 0 0 -5px #cfcfcf,872px 0 0 -5px #cfcfcf,873px 0 0 -5px #cfcfcf,874px 0 0 -5px #cfcfcf,875px 0 0 -5px #cfcfcf,876px 0 0 -5px #cfcfcf,877px 0 0 -5px #cfcfcf,878px 0 0 -5px #cfcfcf,879px 0 0 -5px #cfcfcf,880px 0 0 -5px #cfcfcf,881px 0 0 -5px #cfcfcf,882px 0 0 -5px #cfcfcf,883px 0 0 -5px #cfcfcf,884px 0 0 -5px #cfcfcf,885px 0 0 -5px #cfcfcf,886px 0 0 -5px #cfcfcf,887px 0 0 -5px #cfcfcf,888px 0 0 -5px #cfcfcf,889px 0 0 -5px #cfcfcf,890px 0 0 -5px #cfcfcf,891px 0 0 -5px #cfcfcf,892px 0 0 -5px #cfcfcf,893px 0 0 -5px #cfcfcf,894px 0 0 -5px #cfcfcf,895px 0 0 -5px #cfcfcf,896px 0 0 -5px #cfcfcf,897px 0 0 -5px #cfcfcf,898px 0 0 -5px #cfcfcf,899px 0 0 -5px #cfcfcf,900px 0 0 -5px #cfcfcf,901px 0 0 -5px #cfcfcf,902px 0 0 -5px #cfcfcf,903px 0 0 -5px #cfcfcf,904px 0 0 -5px #cfcfcf,905px 0 0 -5px #cfcfcf,906px 0 0 -5px #cfcfcf,907px 0 0 -5px #cfcfcf,908px 0 0 -5px #cfcfcf,909px 0 0 -5px #cfcfcf,910px 0 0 -5px #cfcfcf,911px 0 0 -5px #cfcfcf,912px 0 0 -5px #cfcfcf,913px 0 0 -5px #cfcfcf,914px 0 0 -5px #cfcfcf,915px 0 0 -5px #cfcfcf,916px 0 0 -5px #cfcfcf,917px 0 0 -5px #cfcfcf,918px 0 0 -5px #cfcfcf,919px 0 0 -5px #cfcfcf,920px 0 0 -5px #cfcfcf,921px 0 0 -5px #cfcfcf,922px 0 0 -5px #cfcfcf,923px 0 0 -5px #cfcfcf,924px 0 0 -5px #cfcfcf,925px 0 0 -5px #cfcfcf,926px 0 0 -5px #cfcfcf,927px 0 0 -5px #cfcfcf,928px 0 0 -5px #cfcfcf,929px 0 0 -5px #cfcfcf,930px 0 0 -5px #cfcfcf,931px 0 0 -5px #cfcfcf,932px 0 0 -5px #cfcfcf,933px 0 0 -5px #cfcfcf,934px 0 0 -5px #cfcfcf,935px 0 0 -5px #cfcfcf,936px 0 0 -5px #cfcfcf,937px 0 0 -5px #cfcfcf,938px 0 0 -5px #cfcfcf,939px 0 0 -5px #cfcfcf,940px 0 0 -5px #cfcfcf,941px 0 0 -5px #cfcfcf,942px 0 0 -5px #cfcfcf,943px 0 0 -5px #cfcfcf,944px 0 0 -5px #cfcfcf,945px 0 0 -5px #cfcfcf,946px 0 0 -5px #cfcfcf,947px 0 0 -5px #cfcfcf,948px 0 0 -5px #cfcfcf,949px 0 0 -5px #cfcfcf,950px 0 0 -5px #cfcfcf,951px 0 0 -5px #cfcfcf,952px 0 0 -5px #cfcfcf,953px 0 0 -5px #cfcfcf,954px 0 0 -5px #cfcfcf,955px 0 0 -5px #cfcfcf,956px 0 0 -5px #cfcfcf,957px 0 0 -5px #cfcfcf,958px 0 0 -5px #cfcfcf,959px 0 0 -5px #cfcfcf,960px 0 0 -5px #cfcfcf,961px 0 0 -5px #cfcfcf,962px 0 0 -5px #cfcfcf,963px 0 0 -5px #cfcfcf,964px 0 0 -5px #cfcfcf,965px 0 0 -5px #cfcfcf,966px 0 0 -5px #cfcfcf,967px 0 0 -5px #cfcfcf,968px 0 0 -5px #cfcfcf,969px 0 0 -5px #cfcfcf,970px 0 0 -5px #cfcfcf,971px 0 0 -5px #cfcfcf,972px 0 0 -5px #cfcfcf,973px 0 0 -5px #cfcfcf,974px 0 0 -5px #cfcfcf,975px 0 0 -5px #cfcfcf,976px 0 0 -5px #cfcfcf,977px 0 0 -5px #cfcfcf,978px 0 0 -5px #cfcfcf,979px 0 0 -5px #cfcfcf,980px 0 0 -5px #cfcfcf,981px 0 0 -5px #cfcfcf,982px 0 0 -5px #cfcfcf,983px 0 0 -5px #cfcfcf,984px 0 0 -5px #cfcfcf,985px 0 0 -5px #cfcfcf,986px 0 0 -5px #cfcfcf,987px 0 0 -5px #cfcfcf,988px 0 0 -5px #cfcfcf,989px 0 0 -5px #cfcfcf,990px 0 0 -5px #cfcfcf,991px 0 0 -5px #cfcfcf,992px 0 0 -5px #cfcfcf,993px 0 0 -5px #cfcfcf,994px 0 0 -5px #cfcfcf,995px 0 0 -5px #cfcfcf,996px 0 0 -5px #cfcfcf,997px 0 0 -5px #cfcfcf,998px 0 0 -5px #cfcfcf,999px 0 0 -5px #cfcfcf,1000px 0 0 -5px #cfcfcf;transition:background-color .15s}.hs-input-range__slider::-moz-range-progress,.hs-input-range__slider::-moz-range-track{width:100%;height:30px;background:linear-gradient(180deg,#cfcfcf,#cfcfcf) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-moz-range-progress{background:linear-gradient(180deg,#0199ff,#0199ff) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-moz-range-thumb{appearance:none;margin:0;height:13px;width:13px;background:#0199ff;border-radius:100%;border:0;transition:background-color .15s}.hs-input-range__slider::-ms-track{width:100%;height:30px;border:0;color:transparent;background:transparent}.hs-input-range__slider::-ms-fill-lower{background:linear-gradient(180deg,#0199ff,#0199ff) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-ms-fill-upper{background:linear-gradient(180deg,#cfcfcf,#cfcfcf) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-ms-thumb{appearance:none;height:13px;width:13px;background:#0199ff;border-radius:100%;border:0;transition:background-color .15s;top:0;margin:0;box-shadow:none}.hs-input-range__slider:focus::-webkit-slider-thumb,.hs-input-range__slider:hover::-webkit-slider-thumb{background-color:#55c2ff}.hs-input-range__slider:focus::-moz-range-thumb,.hs-input-range__slider:hover::-moz-range-thumb{background-color:#55c2ff}.hs-input-range__slider:focus::-ms-thumb,.hs-input-range__slider:hover::-ms-thumb{background-color:#55c2ff}.hs-input-rating__container{width:95%;margin-bottom:30px;display:table;table-layout:fixed}.hs-input-rating__container section{display:table-row}.hs-input-rating__label{position:relative;display:table-cell;vertical-align:middle;text-align:center}.hs-input-rating__label input,.hs-input-rating__label svg{position:absolute;top:20px;left:0;right:0;margin-left:auto;margin-right:auto;display:block;cursor:pointer}.hs-input-rating__label svg{position:absolute;width:45px;height:45px;fill:#fff;stroke:#ccc;transform:scale(.6);transition:transform .2s ease-in-out}.hs-input-rating__label path{transition:fill .2s ease-in-out,stroke .1s ease-in-out}.hs-input-rating__is-star input{display:none}.hs-input-rating__svg-is-selected{transform:scale(.7)}.hs-input-rating__svg-is-selected path{fill:#f7e31b;stroke:#d7c508}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .hs-button{white-space:pre-wrap}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .hs-richtext{word-break:break-word}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9.submitted-message{overflow:auto}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset{border:0;padding:0;margin:0;max-width:500px}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-1 .hs-input{width:95%}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-1 .input{margin-right:8px}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-1 input[type=checkbox],.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-1 input[type=radio]{width:auto}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-2 .hs-form-field{width:50%;float:left}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-2 .input{margin-right:8px}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-3 .hs-form-field{width:32.7%;float:left}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 fieldset.form-columns-3 .input{margin-right:8px}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 label.hs-hidden{visibility:hidden}.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9 .hs-field-desc{width:100%}.hs-custom-style .hs-input,.hs-custom-style fieldset{max-width:100%}.hs-custom-style>div.form-columns-3 .hs-form-field,.hs-custom-style fieldset.form-columns-3 .hs-form-field{width:33.3%}.hs-custom-style>div>div:last-of-type .hs-input:not([type=checkbox]):not([type=radio]),.hs-custom-style fieldset>div:last-of-type .hs-input:not([type=checkbox]):not([type=radio]){width:100%;max-width:100%}.hs-custom-style>div input:not([type=image]):not([type=submit]):not([type=button]):not([type=radio]):not([type=checkbox]):not([type=file]),.hs-custom-style fieldset input:not([type=image]):not([type=submit]):not([type=button]):not([type=radio]):not([type=checkbox]):not([type=file]){box-sizing:border-box;padding:0 15px;min-height:27px}.hs-custom-style .hs-dependent-field>div .hs-input:not([type=checkbox]):not([type=radio]){width:100%}@media (max-width:400px),(min-device-width:320px) and (max-device-width:480px){.hs-custom-style .hs-input:not([type=checkbox]):not([type=radio]),.hs-custom-style fieldset{margin-right:0!important;width:100%!important}form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-2 .hs-form-field,form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-3 .hs-form-field{float:none;width:100%}form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-2 .hs-form-field .hs-input,form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-3 .hs-form-field .hs-input{width:95%}form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-2 .hs-form-field input[type=checkbox],form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-2 .hs-form-field input[type=radio],form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-3 .hs-form-field input[type=checkbox],form.hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9:not(.hs-video-form) .form-columns-3 .hs-form-field input[type=radio]{width:auto}}.legal-consent-container .field.hs-form-field{margin-bottom:8px}.legal-consent-container .hs-field-desc.checkbox-desc{margin:-12px 0 0 21px}.legal-consent-container .hs-form-booleancheckbox-display input{float:left}.legal-consent-container .hs-form-booleancheckbox-display>span{display:block;margin-left:20px}.legal-consent-container .hs-form-booleancheckbox-display p{margin:0;display:inline}.legal-consent-container .hs-error-msgs label{color:#f2545b}.legal-consent-container~.hs_recaptcha{margin-top:18px}.cookie-reset-container{font-size:14px;margin-bottom:10px;text-align:right}



#hs-outer-captcha-target,#hs-outer-captcha-target *{display:none;height:0;width:0}.hubspot-link__container{font-size:14px;padding-bottom:40px;position:relative;color:#9fa0a2;font-family:Helvetica Neue,Helvetica,Arial,sans-serif}.hubspot-link-text{color:#00a4bd;font-weight:400}.hubspot-link__container.sproket{color:#9fa0a2}.hubspot-link{color:#9fa0a2}.hubspot-link,.hubspot-link:hover{text-decoration:none}.hubspot-link:hover .hubspot-link-text{text-decoration:underline}.hubspot-link__icon{margin-bottom:-1px;margin-right:5px}.hubspot-link__container.sproket .hubspot-link__icon{width:30px;margin-right:0;float:left;margin-top:-9px;margin-left:-5px}

</style><style type="text/css" id="hs-form-style03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15">.fn-date-picker.pika-single{z-index:9999;display:block;position:relative;color:#333;background:#fff;border:1px solid #ccc;border-bottom-color:#bbb;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;*zoom:1}.fn-date-picker.pika-single.is-hidden{display:none}.fn-date-picker.pika-single.is-bound{position:absolute;box-shadow:0 5px 15px -5px rgba(0,0,0,.5)}.fn-date-picker.pika-single:after,.fn-date-picker.pika-single:before{content:" ";display:table}.fn-date-picker.pika-single:after{clear:both}.fn-date-picker .pika-lendar{float:left;width:240px;margin:8px}.fn-date-picker .pika-title{position:relative;text-align:center}.fn-date-picker .pika-title select{cursor:pointer;position:absolute;z-index:9998;margin:0;left:0;top:5px;filter:alpha(opacity=0);opacity:0}.fn-date-picker .pika-label{display:inline-block;*display:inline;position:relative;z-index:9999;overflow:hidden;margin:0;padding:5px 3px;font-size:14px;line-height:20px;font-weight:700;background-color:#fff}.fn-date-picker .pika-next,.fn-date-picker .pika-prev{display:block;cursor:pointer;position:relative;outline:none;border:0;padding:0;width:20px;height:30px;text-indent:20px;white-space:nowrap;overflow:hidden;background-color:transparent;background-position:50%;background-repeat:no-repeat;background-size:75% 75%;opacity:.5;*position:absolute;*top:0}.fn-date-picker .pika-next:hover,.fn-date-picker .pika-prev:hover{opacity:1}.fn-date-picker .pika-next.is-disabled,.fn-date-picker .pika-prev.is-disabled{cursor:default;opacity:.2}.fn-date-picker .is-rtl .pika-next,.fn-date-picker .pika-prev{float:left;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAeCAYAAAAsEj5rAAAAUklEQVR42u3VMQoAIBADQf8Pgj+OD9hG2CtONJB2ymQkKe0HbwAP0xucDiQWARITIDEBEnMgMQ8S8+AqBIl6kKgHiXqQqAeJepBo/z38J/U0uAHlaBkBl9I4GwAAAABJRU5ErkJggg==);*left:0}.fn-date-picker .is-rtl .pika-prev,.fn-date-picker .pika-next{float:right;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAeCAYAAAAsEj5rAAAAU0lEQVR42u3VOwoAMAgE0dwfAnNjU26bYkBCFGwfiL9VVWoO+BJ4Gf3gtsEKKoFBNTCoCAYVwaAiGNQGMUHMkjGbgjk2mIONuXo0nC8XnCf1JXgArVIZAQh5TKYAAAAASUVORK5CYII=);*right:0}.fn-date-picker .pika-select{display:inline-block;*display:inline}.fn-date-picker .pika-table{width:100%;border-collapse:collapse;border-spacing:0;border:0}.fn-date-picker .pika-table td,.fn-date-picker .pika-table th{width:14.285714285714286%;padding:0}.fn-date-picker .pika-table th{color:#999;font-size:12px;line-height:25px;font-weight:700;text-align:center}.fn-date-picker .pika-table abbr{border-bottom:none;cursor:help}.fn-date-picker .pika-button{cursor:pointer;display:block;-moz-box-sizing:border-box;box-sizing:border-box;outline:none;border:0;margin:0;width:100%;padding:5px;color:#666;font-size:12px;line-height:15px;text-align:right;background:#f5f5f5}.fn-date-picker .pika-button:hover{color:#fff!important;background:#ff8000!important;box-shadow:none!important;border-radius:3px!important}.fn-date-picker .is-today .pika-button{color:#3af;font-weight:700}.fn-date-picker .is-selected .pika-button{color:#fff;font-weight:700;background:#3af;box-shadow:inset 0 1px 3px #178fe5;border-radius:3px}.fn-date-picker .is-disabled .pika-button{pointer-events:none;cursor:default;color:#999;opacity:.3}.fn-date-picker .pika-week{font-size:11px;color:#999}

.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list li{vertical-align:top;display:inline-block;word-wrap:break-word;padding-right:16px}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list li:after{clear:both}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list li input{float:left}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list.inline-list-2 li{width:50%}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list.inline-list-2 li:nth-child(2n){padding-right:0}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list.inline-list-3 li{width:33%}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .inputs-list.inline-list.inline-list-3 li:nth-child(3n){width:34%;padding-right:0}.hs-fieldtype-intl-phone.hs-input{padding:0;background:none;border:none;height:auto}.hs-fieldtype-intl-phone.hs-input:after{clear:both;content:" ";display:table}.hs-fieldtype-intl-phone.hs-input .hs-input{margin-bottom:0}.hs-fieldtype-intl-phone.hs-input input{width:68%!important;float:right}.hs-fieldtype-intl-phone.hs-input select{float:left;width:30%!important}@media (max-device-width:480px) and (min-device-width:320px),(max-width:400px){.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15>.hs-phone>.input>.hs-fieldtype-intl-phone.hs-input>input.hs-input{width:68%!important}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15>.hs-phone>.input>.hs-fieldtype-intl-phone.hs-input>select.hs-input{width:30%!important}}.hs-input-range-container{width:95%}.hs-input-range-container div{display:inline-block;line-height:50px}.hs-input-range-container .hs-input-range{width:90%;height:40px}.hs-input-range-container .hs-input-range>*{vertical-align:middle}.hs-input-range-container .hs-input-range input{margin:0 5px;width:85%}.hs-input-range-container .hs-input-range-value-container{width:10%}.hs-input-range-container .hs-input{width:100%!important;margin-right:1px;background-color:#fff;text-align:center}.hs-input-range__slider{appearance:none;margin:0;height:30px;overflow:hidden;cursor:pointer}.hs-input-range__slider:focus{outline:none}.hs-input-range__slider::-webkit-slider-runnable-track{width:100%;height:30px;background:linear-gradient(180deg,#0199ff,#0199ff) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-webkit-slider-thumb{position:relative;appearance:none;height:13px;width:13px;background:#0199ff;border-radius:100%;border:0;top:50%;margin-top:-7.5px;box-shadow:1px 0 0 -5px #cfcfcf,2px 0 0 -5px #cfcfcf,3px 0 0 -5px #cfcfcf,4px 0 0 -5px #cfcfcf,5px 0 0 -5px #cfcfcf,6px 0 0 -5px #cfcfcf,7px 0 0 -5px #cfcfcf,8px 0 0 -5px #cfcfcf,9px 0 0 -5px #cfcfcf,10px 0 0 -5px #cfcfcf,11px 0 0 -5px #cfcfcf,12px 0 0 -5px #cfcfcf,13px 0 0 -5px #cfcfcf,14px 0 0 -5px #cfcfcf,15px 0 0 -5px #cfcfcf,16px 0 0 -5px #cfcfcf,17px 0 0 -5px #cfcfcf,18px 0 0 -5px #cfcfcf,19px 0 0 -5px #cfcfcf,20px 0 0 -5px #cfcfcf,21px 0 0 -5px #cfcfcf,22px 0 0 -5px #cfcfcf,23px 0 0 -5px #cfcfcf,24px 0 0 -5px #cfcfcf,25px 0 0 -5px #cfcfcf,26px 0 0 -5px #cfcfcf,27px 0 0 -5px #cfcfcf,28px 0 0 -5px #cfcfcf,29px 0 0 -5px #cfcfcf,30px 0 0 -5px #cfcfcf,31px 0 0 -5px #cfcfcf,32px 0 0 -5px #cfcfcf,33px 0 0 -5px #cfcfcf,34px 0 0 -5px #cfcfcf,35px 0 0 -5px #cfcfcf,36px 0 0 -5px #cfcfcf,37px 0 0 -5px #cfcfcf,38px 0 0 -5px #cfcfcf,39px 0 0 -5px #cfcfcf,40px 0 0 -5px #cfcfcf,41px 0 0 -5px #cfcfcf,42px 0 0 -5px #cfcfcf,43px 0 0 -5px #cfcfcf,44px 0 0 -5px #cfcfcf,45px 0 0 -5px #cfcfcf,46px 0 0 -5px #cfcfcf,47px 0 0 -5px #cfcfcf,48px 0 0 -5px #cfcfcf,49px 0 0 -5px #cfcfcf,50px 0 0 -5px #cfcfcf,51px 0 0 -5px #cfcfcf,52px 0 0 -5px #cfcfcf,53px 0 0 -5px #cfcfcf,54px 0 0 -5px #cfcfcf,55px 0 0 -5px #cfcfcf,56px 0 0 -5px #cfcfcf,57px 0 0 -5px #cfcfcf,58px 0 0 -5px #cfcfcf,59px 0 0 -5px #cfcfcf,60px 0 0 -5px #cfcfcf,61px 0 0 -5px #cfcfcf,62px 0 0 -5px #cfcfcf,63px 0 0 -5px #cfcfcf,64px 0 0 -5px #cfcfcf,65px 0 0 -5px #cfcfcf,66px 0 0 -5px #cfcfcf,67px 0 0 -5px #cfcfcf,68px 0 0 -5px #cfcfcf,69px 0 0 -5px #cfcfcf,70px 0 0 -5px #cfcfcf,71px 0 0 -5px #cfcfcf,72px 0 0 -5px #cfcfcf,73px 0 0 -5px #cfcfcf,74px 0 0 -5px #cfcfcf,75px 0 0 -5px #cfcfcf,76px 0 0 -5px #cfcfcf,77px 0 0 -5px #cfcfcf,78px 0 0 -5px #cfcfcf,79px 0 0 -5px #cfcfcf,80px 0 0 -5px #cfcfcf,81px 0 0 -5px #cfcfcf,82px 0 0 -5px #cfcfcf,83px 0 0 -5px #cfcfcf,84px 0 0 -5px #cfcfcf,85px 0 0 -5px #cfcfcf,86px 0 0 -5px #cfcfcf,87px 0 0 -5px #cfcfcf,88px 0 0 -5px #cfcfcf,89px 0 0 -5px #cfcfcf,90px 0 0 -5px #cfcfcf,91px 0 0 -5px #cfcfcf,92px 0 0 -5px #cfcfcf,93px 0 0 -5px #cfcfcf,94px 0 0 -5px #cfcfcf,95px 0 0 -5px #cfcfcf,96px 0 0 -5px #cfcfcf,97px 0 0 -5px #cfcfcf,98px 0 0 -5px #cfcfcf,99px 0 0 -5px #cfcfcf,100px 0 0 -5px #cfcfcf,101px 0 0 -5px #cfcfcf,102px 0 0 -5px #cfcfcf,103px 0 0 -5px #cfcfcf,104px 0 0 -5px #cfcfcf,105px 0 0 -5px #cfcfcf,106px 0 0 -5px #cfcfcf,107px 0 0 -5px #cfcfcf,108px 0 0 -5px #cfcfcf,109px 0 0 -5px #cfcfcf,110px 0 0 -5px #cfcfcf,111px 0 0 -5px #cfcfcf,112px 0 0 -5px #cfcfcf,113px 0 0 -5px #cfcfcf,114px 0 0 -5px #cfcfcf,115px 0 0 -5px #cfcfcf,116px 0 0 -5px #cfcfcf,117px 0 0 -5px #cfcfcf,118px 0 0 -5px #cfcfcf,119px 0 0 -5px #cfcfcf,120px 0 0 -5px #cfcfcf,121px 0 0 -5px #cfcfcf,122px 0 0 -5px #cfcfcf,123px 0 0 -5px #cfcfcf,124px 0 0 -5px #cfcfcf,125px 0 0 -5px #cfcfcf,126px 0 0 -5px #cfcfcf,127px 0 0 -5px #cfcfcf,128px 0 0 -5px #cfcfcf,129px 0 0 -5px #cfcfcf,130px 0 0 -5px #cfcfcf,131px 0 0 -5px #cfcfcf,132px 0 0 -5px #cfcfcf,133px 0 0 -5px #cfcfcf,134px 0 0 -5px #cfcfcf,135px 0 0 -5px #cfcfcf,136px 0 0 -5px #cfcfcf,137px 0 0 -5px #cfcfcf,138px 0 0 -5px #cfcfcf,139px 0 0 -5px #cfcfcf,140px 0 0 -5px #cfcfcf,141px 0 0 -5px #cfcfcf,142px 0 0 -5px #cfcfcf,143px 0 0 -5px #cfcfcf,144px 0 0 -5px #cfcfcf,145px 0 0 -5px #cfcfcf,146px 0 0 -5px #cfcfcf,147px 0 0 -5px #cfcfcf,148px 0 0 -5px #cfcfcf,149px 0 0 -5px #cfcfcf,150px 0 0 -5px #cfcfcf,151px 0 0 -5px #cfcfcf,152px 0 0 -5px #cfcfcf,153px 0 0 -5px #cfcfcf,154px 0 0 -5px #cfcfcf,155px 0 0 -5px #cfcfcf,156px 0 0 -5px #cfcfcf,157px 0 0 -5px #cfcfcf,158px 0 0 -5px #cfcfcf,159px 0 0 -5px #cfcfcf,160px 0 0 -5px #cfcfcf,161px 0 0 -5px #cfcfcf,162px 0 0 -5px #cfcfcf,163px 0 0 -5px #cfcfcf,164px 0 0 -5px #cfcfcf,165px 0 0 -5px #cfcfcf,166px 0 0 -5px #cfcfcf,167px 0 0 -5px #cfcfcf,168px 0 0 -5px #cfcfcf,169px 0 0 -5px #cfcfcf,170px 0 0 -5px #cfcfcf,171px 0 0 -5px #cfcfcf,172px 0 0 -5px #cfcfcf,173px 0 0 -5px #cfcfcf,174px 0 0 -5px #cfcfcf,175px 0 0 -5px #cfcfcf,176px 0 0 -5px #cfcfcf,177px 0 0 -5px #cfcfcf,178px 0 0 -5px #cfcfcf,179px 0 0 -5px #cfcfcf,180px 0 0 -5px #cfcfcf,181px 0 0 -5px #cfcfcf,182px 0 0 -5px #cfcfcf,183px 0 0 -5px #cfcfcf,184px 0 0 -5px #cfcfcf,185px 0 0 -5px #cfcfcf,186px 0 0 -5px #cfcfcf,187px 0 0 -5px #cfcfcf,188px 0 0 -5px #cfcfcf,189px 0 0 -5px #cfcfcf,190px 0 0 -5px #cfcfcf,191px 0 0 -5px #cfcfcf,192px 0 0 -5px #cfcfcf,193px 0 0 -5px #cfcfcf,194px 0 0 -5px #cfcfcf,195px 0 0 -5px #cfcfcf,196px 0 0 -5px #cfcfcf,197px 0 0 -5px #cfcfcf,198px 0 0 -5px #cfcfcf,199px 0 0 -5px #cfcfcf,200px 0 0 -5px #cfcfcf,201px 0 0 -5px #cfcfcf,202px 0 0 -5px #cfcfcf,203px 0 0 -5px #cfcfcf,204px 0 0 -5px #cfcfcf,205px 0 0 -5px #cfcfcf,206px 0 0 -5px #cfcfcf,207px 0 0 -5px #cfcfcf,208px 0 0 -5px #cfcfcf,209px 0 0 -5px #cfcfcf,210px 0 0 -5px #cfcfcf,211px 0 0 -5px #cfcfcf,212px 0 0 -5px #cfcfcf,213px 0 0 -5px #cfcfcf,214px 0 0 -5px #cfcfcf,215px 0 0 -5px #cfcfcf,216px 0 0 -5px #cfcfcf,217px 0 0 -5px #cfcfcf,218px 0 0 -5px #cfcfcf,219px 0 0 -5px #cfcfcf,220px 0 0 -5px #cfcfcf,221px 0 0 -5px #cfcfcf,222px 0 0 -5px #cfcfcf,223px 0 0 -5px #cfcfcf,224px 0 0 -5px #cfcfcf,225px 0 0 -5px #cfcfcf,226px 0 0 -5px #cfcfcf,227px 0 0 -5px #cfcfcf,228px 0 0 -5px #cfcfcf,229px 0 0 -5px #cfcfcf,230px 0 0 -5px #cfcfcf,231px 0 0 -5px #cfcfcf,232px 0 0 -5px #cfcfcf,233px 0 0 -5px #cfcfcf,234px 0 0 -5px #cfcfcf,235px 0 0 -5px #cfcfcf,236px 0 0 -5px #cfcfcf,237px 0 0 -5px #cfcfcf,238px 0 0 -5px #cfcfcf,239px 0 0 -5px #cfcfcf,240px 0 0 -5px #cfcfcf,241px 0 0 -5px #cfcfcf,242px 0 0 -5px #cfcfcf,243px 0 0 -5px #cfcfcf,244px 0 0 -5px #cfcfcf,245px 0 0 -5px #cfcfcf,246px 0 0 -5px #cfcfcf,247px 0 0 -5px #cfcfcf,248px 0 0 -5px #cfcfcf,249px 0 0 -5px #cfcfcf,250px 0 0 -5px #cfcfcf,251px 0 0 -5px #cfcfcf,252px 0 0 -5px #cfcfcf,253px 0 0 -5px #cfcfcf,254px 0 0 -5px #cfcfcf,255px 0 0 -5px #cfcfcf,256px 0 0 -5px #cfcfcf,257px 0 0 -5px #cfcfcf,258px 0 0 -5px #cfcfcf,259px 0 0 -5px #cfcfcf,260px 0 0 -5px #cfcfcf,261px 0 0 -5px #cfcfcf,262px 0 0 -5px #cfcfcf,263px 0 0 -5px #cfcfcf,264px 0 0 -5px #cfcfcf,265px 0 0 -5px #cfcfcf,266px 0 0 -5px #cfcfcf,267px 0 0 -5px #cfcfcf,268px 0 0 -5px #cfcfcf,269px 0 0 -5px #cfcfcf,270px 0 0 -5px #cfcfcf,271px 0 0 -5px #cfcfcf,272px 0 0 -5px #cfcfcf,273px 0 0 -5px #cfcfcf,274px 0 0 -5px #cfcfcf,275px 0 0 -5px #cfcfcf,276px 0 0 -5px #cfcfcf,277px 0 0 -5px #cfcfcf,278px 0 0 -5px #cfcfcf,279px 0 0 -5px #cfcfcf,280px 0 0 -5px #cfcfcf,281px 0 0 -5px #cfcfcf,282px 0 0 -5px #cfcfcf,283px 0 0 -5px #cfcfcf,284px 0 0 -5px #cfcfcf,285px 0 0 -5px #cfcfcf,286px 0 0 -5px #cfcfcf,287px 0 0 -5px #cfcfcf,288px 0 0 -5px #cfcfcf,289px 0 0 -5px #cfcfcf,290px 0 0 -5px #cfcfcf,291px 0 0 -5px #cfcfcf,292px 0 0 -5px #cfcfcf,293px 0 0 -5px #cfcfcf,294px 0 0 -5px #cfcfcf,295px 0 0 -5px #cfcfcf,296px 0 0 -5px #cfcfcf,297px 0 0 -5px #cfcfcf,298px 0 0 -5px #cfcfcf,299px 0 0 -5px #cfcfcf,300px 0 0 -5px #cfcfcf,301px 0 0 -5px #cfcfcf,302px 0 0 -5px #cfcfcf,303px 0 0 -5px #cfcfcf,304px 0 0 -5px #cfcfcf,305px 0 0 -5px #cfcfcf,306px 0 0 -5px #cfcfcf,307px 0 0 -5px #cfcfcf,308px 0 0 -5px #cfcfcf,309px 0 0 -5px #cfcfcf,310px 0 0 -5px #cfcfcf,311px 0 0 -5px #cfcfcf,312px 0 0 -5px #cfcfcf,313px 0 0 -5px #cfcfcf,314px 0 0 -5px #cfcfcf,315px 0 0 -5px #cfcfcf,316px 0 0 -5px #cfcfcf,317px 0 0 -5px #cfcfcf,318px 0 0 -5px #cfcfcf,319px 0 0 -5px #cfcfcf,320px 0 0 -5px #cfcfcf,321px 0 0 -5px #cfcfcf,322px 0 0 -5px #cfcfcf,323px 0 0 -5px #cfcfcf,324px 0 0 -5px #cfcfcf,325px 0 0 -5px #cfcfcf,326px 0 0 -5px #cfcfcf,327px 0 0 -5px #cfcfcf,328px 0 0 -5px #cfcfcf,329px 0 0 -5px #cfcfcf,330px 0 0 -5px #cfcfcf,331px 0 0 -5px #cfcfcf,332px 0 0 -5px #cfcfcf,333px 0 0 -5px #cfcfcf,334px 0 0 -5px #cfcfcf,335px 0 0 -5px #cfcfcf,336px 0 0 -5px #cfcfcf,337px 0 0 -5px #cfcfcf,338px 0 0 -5px #cfcfcf,339px 0 0 -5px #cfcfcf,340px 0 0 -5px #cfcfcf,341px 0 0 -5px #cfcfcf,342px 0 0 -5px #cfcfcf,343px 0 0 -5px #cfcfcf,344px 0 0 -5px #cfcfcf,345px 0 0 -5px #cfcfcf,346px 0 0 -5px #cfcfcf,347px 0 0 -5px #cfcfcf,348px 0 0 -5px #cfcfcf,349px 0 0 -5px #cfcfcf,350px 0 0 -5px #cfcfcf,351px 0 0 -5px #cfcfcf,352px 0 0 -5px #cfcfcf,353px 0 0 -5px #cfcfcf,354px 0 0 -5px #cfcfcf,355px 0 0 -5px #cfcfcf,356px 0 0 -5px #cfcfcf,357px 0 0 -5px #cfcfcf,358px 0 0 -5px #cfcfcf,359px 0 0 -5px #cfcfcf,360px 0 0 -5px #cfcfcf,361px 0 0 -5px #cfcfcf,362px 0 0 -5px #cfcfcf,363px 0 0 -5px #cfcfcf,364px 0 0 -5px #cfcfcf,365px 0 0 -5px #cfcfcf,366px 0 0 -5px #cfcfcf,367px 0 0 -5px #cfcfcf,368px 0 0 -5px #cfcfcf,369px 0 0 -5px #cfcfcf,370px 0 0 -5px #cfcfcf,371px 0 0 -5px #cfcfcf,372px 0 0 -5px #cfcfcf,373px 0 0 -5px #cfcfcf,374px 0 0 -5px #cfcfcf,375px 0 0 -5px #cfcfcf,376px 0 0 -5px #cfcfcf,377px 0 0 -5px #cfcfcf,378px 0 0 -5px #cfcfcf,379px 0 0 -5px #cfcfcf,380px 0 0 -5px #cfcfcf,381px 0 0 -5px #cfcfcf,382px 0 0 -5px #cfcfcf,383px 0 0 -5px #cfcfcf,384px 0 0 -5px #cfcfcf,385px 0 0 -5px #cfcfcf,386px 0 0 -5px #cfcfcf,387px 0 0 -5px #cfcfcf,388px 0 0 -5px #cfcfcf,389px 0 0 -5px #cfcfcf,390px 0 0 -5px #cfcfcf,391px 0 0 -5px #cfcfcf,392px 0 0 -5px #cfcfcf,393px 0 0 -5px #cfcfcf,394px 0 0 -5px #cfcfcf,395px 0 0 -5px #cfcfcf,396px 0 0 -5px #cfcfcf,397px 0 0 -5px #cfcfcf,398px 0 0 -5px #cfcfcf,399px 0 0 -5px #cfcfcf,400px 0 0 -5px #cfcfcf,401px 0 0 -5px #cfcfcf,402px 0 0 -5px #cfcfcf,403px 0 0 -5px #cfcfcf,404px 0 0 -5px #cfcfcf,405px 0 0 -5px #cfcfcf,406px 0 0 -5px #cfcfcf,407px 0 0 -5px #cfcfcf,408px 0 0 -5px #cfcfcf,409px 0 0 -5px #cfcfcf,410px 0 0 -5px #cfcfcf,411px 0 0 -5px #cfcfcf,412px 0 0 -5px #cfcfcf,413px 0 0 -5px #cfcfcf,414px 0 0 -5px #cfcfcf,415px 0 0 -5px #cfcfcf,416px 0 0 -5px #cfcfcf,417px 0 0 -5px #cfcfcf,418px 0 0 -5px #cfcfcf,419px 0 0 -5px #cfcfcf,420px 0 0 -5px #cfcfcf,421px 0 0 -5px #cfcfcf,422px 0 0 -5px #cfcfcf,423px 0 0 -5px #cfcfcf,424px 0 0 -5px #cfcfcf,425px 0 0 -5px #cfcfcf,426px 0 0 -5px #cfcfcf,427px 0 0 -5px #cfcfcf,428px 0 0 -5px #cfcfcf,429px 0 0 -5px #cfcfcf,430px 0 0 -5px #cfcfcf,431px 0 0 -5px #cfcfcf,432px 0 0 -5px #cfcfcf,433px 0 0 -5px #cfcfcf,434px 0 0 -5px #cfcfcf,435px 0 0 -5px #cfcfcf,436px 0 0 -5px #cfcfcf,437px 0 0 -5px #cfcfcf,438px 0 0 -5px #cfcfcf,439px 0 0 -5px #cfcfcf,440px 0 0 -5px #cfcfcf,441px 0 0 -5px #cfcfcf,442px 0 0 -5px #cfcfcf,443px 0 0 -5px #cfcfcf,444px 0 0 -5px #cfcfcf,445px 0 0 -5px #cfcfcf,446px 0 0 -5px #cfcfcf,447px 0 0 -5px #cfcfcf,448px 0 0 -5px #cfcfcf,449px 0 0 -5px #cfcfcf,450px 0 0 -5px #cfcfcf,451px 0 0 -5px #cfcfcf,452px 0 0 -5px #cfcfcf,453px 0 0 -5px #cfcfcf,454px 0 0 -5px #cfcfcf,455px 0 0 -5px #cfcfcf,456px 0 0 -5px #cfcfcf,457px 0 0 -5px #cfcfcf,458px 0 0 -5px #cfcfcf,459px 0 0 -5px #cfcfcf,460px 0 0 -5px #cfcfcf,461px 0 0 -5px #cfcfcf,462px 0 0 -5px #cfcfcf,463px 0 0 -5px #cfcfcf,464px 0 0 -5px #cfcfcf,465px 0 0 -5px #cfcfcf,466px 0 0 -5px #cfcfcf,467px 0 0 -5px #cfcfcf,468px 0 0 -5px #cfcfcf,469px 0 0 -5px #cfcfcf,470px 0 0 -5px #cfcfcf,471px 0 0 -5px #cfcfcf,472px 0 0 -5px #cfcfcf,473px 0 0 -5px #cfcfcf,474px 0 0 -5px #cfcfcf,475px 0 0 -5px #cfcfcf,476px 0 0 -5px #cfcfcf,477px 0 0 -5px #cfcfcf,478px 0 0 -5px #cfcfcf,479px 0 0 -5px #cfcfcf,480px 0 0 -5px #cfcfcf,481px 0 0 -5px #cfcfcf,482px 0 0 -5px #cfcfcf,483px 0 0 -5px #cfcfcf,484px 0 0 -5px #cfcfcf,485px 0 0 -5px #cfcfcf,486px 0 0 -5px #cfcfcf,487px 0 0 -5px #cfcfcf,488px 0 0 -5px #cfcfcf,489px 0 0 -5px #cfcfcf,490px 0 0 -5px #cfcfcf,491px 0 0 -5px #cfcfcf,492px 0 0 -5px #cfcfcf,493px 0 0 -5px #cfcfcf,494px 0 0 -5px #cfcfcf,495px 0 0 -5px #cfcfcf,496px 0 0 -5px #cfcfcf,497px 0 0 -5px #cfcfcf,498px 0 0 -5px #cfcfcf,499px 0 0 -5px #cfcfcf,500px 0 0 -5px #cfcfcf,501px 0 0 -5px #cfcfcf,502px 0 0 -5px #cfcfcf,503px 0 0 -5px #cfcfcf,504px 0 0 -5px #cfcfcf,505px 0 0 -5px #cfcfcf,506px 0 0 -5px #cfcfcf,507px 0 0 -5px #cfcfcf,508px 0 0 -5px #cfcfcf,509px 0 0 -5px #cfcfcf,510px 0 0 -5px #cfcfcf,511px 0 0 -5px #cfcfcf,512px 0 0 -5px #cfcfcf,513px 0 0 -5px #cfcfcf,514px 0 0 -5px #cfcfcf,515px 0 0 -5px #cfcfcf,516px 0 0 -5px #cfcfcf,517px 0 0 -5px #cfcfcf,518px 0 0 -5px #cfcfcf,519px 0 0 -5px #cfcfcf,520px 0 0 -5px #cfcfcf,521px 0 0 -5px #cfcfcf,522px 0 0 -5px #cfcfcf,523px 0 0 -5px #cfcfcf,524px 0 0 -5px #cfcfcf,525px 0 0 -5px #cfcfcf,526px 0 0 -5px #cfcfcf,527px 0 0 -5px #cfcfcf,528px 0 0 -5px #cfcfcf,529px 0 0 -5px #cfcfcf,530px 0 0 -5px #cfcfcf,531px 0 0 -5px #cfcfcf,532px 0 0 -5px #cfcfcf,533px 0 0 -5px #cfcfcf,534px 0 0 -5px #cfcfcf,535px 0 0 -5px #cfcfcf,536px 0 0 -5px #cfcfcf,537px 0 0 -5px #cfcfcf,538px 0 0 -5px #cfcfcf,539px 0 0 -5px #cfcfcf,540px 0 0 -5px #cfcfcf,541px 0 0 -5px #cfcfcf,542px 0 0 -5px #cfcfcf,543px 0 0 -5px #cfcfcf,544px 0 0 -5px #cfcfcf,545px 0 0 -5px #cfcfcf,546px 0 0 -5px #cfcfcf,547px 0 0 -5px #cfcfcf,548px 0 0 -5px #cfcfcf,549px 0 0 -5px #cfcfcf,550px 0 0 -5px #cfcfcf,551px 0 0 -5px #cfcfcf,552px 0 0 -5px #cfcfcf,553px 0 0 -5px #cfcfcf,554px 0 0 -5px #cfcfcf,555px 0 0 -5px #cfcfcf,556px 0 0 -5px #cfcfcf,557px 0 0 -5px #cfcfcf,558px 0 0 -5px #cfcfcf,559px 0 0 -5px #cfcfcf,560px 0 0 -5px #cfcfcf,561px 0 0 -5px #cfcfcf,562px 0 0 -5px #cfcfcf,563px 0 0 -5px #cfcfcf,564px 0 0 -5px #cfcfcf,565px 0 0 -5px #cfcfcf,566px 0 0 -5px #cfcfcf,567px 0 0 -5px #cfcfcf,568px 0 0 -5px #cfcfcf,569px 0 0 -5px #cfcfcf,570px 0 0 -5px #cfcfcf,571px 0 0 -5px #cfcfcf,572px 0 0 -5px #cfcfcf,573px 0 0 -5px #cfcfcf,574px 0 0 -5px #cfcfcf,575px 0 0 -5px #cfcfcf,576px 0 0 -5px #cfcfcf,577px 0 0 -5px #cfcfcf,578px 0 0 -5px #cfcfcf,579px 0 0 -5px #cfcfcf,580px 0 0 -5px #cfcfcf,581px 0 0 -5px #cfcfcf,582px 0 0 -5px #cfcfcf,583px 0 0 -5px #cfcfcf,584px 0 0 -5px #cfcfcf,585px 0 0 -5px #cfcfcf,586px 0 0 -5px #cfcfcf,587px 0 0 -5px #cfcfcf,588px 0 0 -5px #cfcfcf,589px 0 0 -5px #cfcfcf,590px 0 0 -5px #cfcfcf,591px 0 0 -5px #cfcfcf,592px 0 0 -5px #cfcfcf,593px 0 0 -5px #cfcfcf,594px 0 0 -5px #cfcfcf,595px 0 0 -5px #cfcfcf,596px 0 0 -5px #cfcfcf,597px 0 0 -5px #cfcfcf,598px 0 0 -5px #cfcfcf,599px 0 0 -5px #cfcfcf,600px 0 0 -5px #cfcfcf,601px 0 0 -5px #cfcfcf,602px 0 0 -5px #cfcfcf,603px 0 0 -5px #cfcfcf,604px 0 0 -5px #cfcfcf,605px 0 0 -5px #cfcfcf,606px 0 0 -5px #cfcfcf,607px 0 0 -5px #cfcfcf,608px 0 0 -5px #cfcfcf,609px 0 0 -5px #cfcfcf,610px 0 0 -5px #cfcfcf,611px 0 0 -5px #cfcfcf,612px 0 0 -5px #cfcfcf,613px 0 0 -5px #cfcfcf,614px 0 0 -5px #cfcfcf,615px 0 0 -5px #cfcfcf,616px 0 0 -5px #cfcfcf,617px 0 0 -5px #cfcfcf,618px 0 0 -5px #cfcfcf,619px 0 0 -5px #cfcfcf,620px 0 0 -5px #cfcfcf,621px 0 0 -5px #cfcfcf,622px 0 0 -5px #cfcfcf,623px 0 0 -5px #cfcfcf,624px 0 0 -5px #cfcfcf,625px 0 0 -5px #cfcfcf,626px 0 0 -5px #cfcfcf,627px 0 0 -5px #cfcfcf,628px 0 0 -5px #cfcfcf,629px 0 0 -5px #cfcfcf,630px 0 0 -5px #cfcfcf,631px 0 0 -5px #cfcfcf,632px 0 0 -5px #cfcfcf,633px 0 0 -5px #cfcfcf,634px 0 0 -5px #cfcfcf,635px 0 0 -5px #cfcfcf,636px 0 0 -5px #cfcfcf,637px 0 0 -5px #cfcfcf,638px 0 0 -5px #cfcfcf,639px 0 0 -5px #cfcfcf,640px 0 0 -5px #cfcfcf,641px 0 0 -5px #cfcfcf,642px 0 0 -5px #cfcfcf,643px 0 0 -5px #cfcfcf,644px 0 0 -5px #cfcfcf,645px 0 0 -5px #cfcfcf,646px 0 0 -5px #cfcfcf,647px 0 0 -5px #cfcfcf,648px 0 0 -5px #cfcfcf,649px 0 0 -5px #cfcfcf,650px 0 0 -5px #cfcfcf,651px 0 0 -5px #cfcfcf,652px 0 0 -5px #cfcfcf,653px 0 0 -5px #cfcfcf,654px 0 0 -5px #cfcfcf,655px 0 0 -5px #cfcfcf,656px 0 0 -5px #cfcfcf,657px 0 0 -5px #cfcfcf,658px 0 0 -5px #cfcfcf,659px 0 0 -5px #cfcfcf,660px 0 0 -5px #cfcfcf,661px 0 0 -5px #cfcfcf,662px 0 0 -5px #cfcfcf,663px 0 0 -5px #cfcfcf,664px 0 0 -5px #cfcfcf,665px 0 0 -5px #cfcfcf,666px 0 0 -5px #cfcfcf,667px 0 0 -5px #cfcfcf,668px 0 0 -5px #cfcfcf,669px 0 0 -5px #cfcfcf,670px 0 0 -5px #cfcfcf,671px 0 0 -5px #cfcfcf,672px 0 0 -5px #cfcfcf,673px 0 0 -5px #cfcfcf,674px 0 0 -5px #cfcfcf,675px 0 0 -5px #cfcfcf,676px 0 0 -5px #cfcfcf,677px 0 0 -5px #cfcfcf,678px 0 0 -5px #cfcfcf,679px 0 0 -5px #cfcfcf,680px 0 0 -5px #cfcfcf,681px 0 0 -5px #cfcfcf,682px 0 0 -5px #cfcfcf,683px 0 0 -5px #cfcfcf,684px 0 0 -5px #cfcfcf,685px 0 0 -5px #cfcfcf,686px 0 0 -5px #cfcfcf,687px 0 0 -5px #cfcfcf,688px 0 0 -5px #cfcfcf,689px 0 0 -5px #cfcfcf,690px 0 0 -5px #cfcfcf,691px 0 0 -5px #cfcfcf,692px 0 0 -5px #cfcfcf,693px 0 0 -5px #cfcfcf,694px 0 0 -5px #cfcfcf,695px 0 0 -5px #cfcfcf,696px 0 0 -5px #cfcfcf,697px 0 0 -5px #cfcfcf,698px 0 0 -5px #cfcfcf,699px 0 0 -5px #cfcfcf,700px 0 0 -5px #cfcfcf,701px 0 0 -5px #cfcfcf,702px 0 0 -5px #cfcfcf,703px 0 0 -5px #cfcfcf,704px 0 0 -5px #cfcfcf,705px 0 0 -5px #cfcfcf,706px 0 0 -5px #cfcfcf,707px 0 0 -5px #cfcfcf,708px 0 0 -5px #cfcfcf,709px 0 0 -5px #cfcfcf,710px 0 0 -5px #cfcfcf,711px 0 0 -5px #cfcfcf,712px 0 0 -5px #cfcfcf,713px 0 0 -5px #cfcfcf,714px 0 0 -5px #cfcfcf,715px 0 0 -5px #cfcfcf,716px 0 0 -5px #cfcfcf,717px 0 0 -5px #cfcfcf,718px 0 0 -5px #cfcfcf,719px 0 0 -5px #cfcfcf,720px 0 0 -5px #cfcfcf,721px 0 0 -5px #cfcfcf,722px 0 0 -5px #cfcfcf,723px 0 0 -5px #cfcfcf,724px 0 0 -5px #cfcfcf,725px 0 0 -5px #cfcfcf,726px 0 0 -5px #cfcfcf,727px 0 0 -5px #cfcfcf,728px 0 0 -5px #cfcfcf,729px 0 0 -5px #cfcfcf,730px 0 0 -5px #cfcfcf,731px 0 0 -5px #cfcfcf,732px 0 0 -5px #cfcfcf,733px 0 0 -5px #cfcfcf,734px 0 0 -5px #cfcfcf,735px 0 0 -5px #cfcfcf,736px 0 0 -5px #cfcfcf,737px 0 0 -5px #cfcfcf,738px 0 0 -5px #cfcfcf,739px 0 0 -5px #cfcfcf,740px 0 0 -5px #cfcfcf,741px 0 0 -5px #cfcfcf,742px 0 0 -5px #cfcfcf,743px 0 0 -5px #cfcfcf,744px 0 0 -5px #cfcfcf,745px 0 0 -5px #cfcfcf,746px 0 0 -5px #cfcfcf,747px 0 0 -5px #cfcfcf,748px 0 0 -5px #cfcfcf,749px 0 0 -5px #cfcfcf,750px 0 0 -5px #cfcfcf,751px 0 0 -5px #cfcfcf,752px 0 0 -5px #cfcfcf,753px 0 0 -5px #cfcfcf,754px 0 0 -5px #cfcfcf,755px 0 0 -5px #cfcfcf,756px 0 0 -5px #cfcfcf,757px 0 0 -5px #cfcfcf,758px 0 0 -5px #cfcfcf,759px 0 0 -5px #cfcfcf,760px 0 0 -5px #cfcfcf,761px 0 0 -5px #cfcfcf,762px 0 0 -5px #cfcfcf,763px 0 0 -5px #cfcfcf,764px 0 0 -5px #cfcfcf,765px 0 0 -5px #cfcfcf,766px 0 0 -5px #cfcfcf,767px 0 0 -5px #cfcfcf,768px 0 0 -5px #cfcfcf,769px 0 0 -5px #cfcfcf,770px 0 0 -5px #cfcfcf,771px 0 0 -5px #cfcfcf,772px 0 0 -5px #cfcfcf,773px 0 0 -5px #cfcfcf,774px 0 0 -5px #cfcfcf,775px 0 0 -5px #cfcfcf,776px 0 0 -5px #cfcfcf,777px 0 0 -5px #cfcfcf,778px 0 0 -5px #cfcfcf,779px 0 0 -5px #cfcfcf,780px 0 0 -5px #cfcfcf,781px 0 0 -5px #cfcfcf,782px 0 0 -5px #cfcfcf,783px 0 0 -5px #cfcfcf,784px 0 0 -5px #cfcfcf,785px 0 0 -5px #cfcfcf,786px 0 0 -5px #cfcfcf,787px 0 0 -5px #cfcfcf,788px 0 0 -5px #cfcfcf,789px 0 0 -5px #cfcfcf,790px 0 0 -5px #cfcfcf,791px 0 0 -5px #cfcfcf,792px 0 0 -5px #cfcfcf,793px 0 0 -5px #cfcfcf,794px 0 0 -5px #cfcfcf,795px 0 0 -5px #cfcfcf,796px 0 0 -5px #cfcfcf,797px 0 0 -5px #cfcfcf,798px 0 0 -5px #cfcfcf,799px 0 0 -5px #cfcfcf,800px 0 0 -5px #cfcfcf,801px 0 0 -5px #cfcfcf,802px 0 0 -5px #cfcfcf,803px 0 0 -5px #cfcfcf,804px 0 0 -5px #cfcfcf,805px 0 0 -5px #cfcfcf,806px 0 0 -5px #cfcfcf,807px 0 0 -5px #cfcfcf,808px 0 0 -5px #cfcfcf,809px 0 0 -5px #cfcfcf,810px 0 0 -5px #cfcfcf,811px 0 0 -5px #cfcfcf,812px 0 0 -5px #cfcfcf,813px 0 0 -5px #cfcfcf,814px 0 0 -5px #cfcfcf,815px 0 0 -5px #cfcfcf,816px 0 0 -5px #cfcfcf,817px 0 0 -5px #cfcfcf,818px 0 0 -5px #cfcfcf,819px 0 0 -5px #cfcfcf,820px 0 0 -5px #cfcfcf,821px 0 0 -5px #cfcfcf,822px 0 0 -5px #cfcfcf,823px 0 0 -5px #cfcfcf,824px 0 0 -5px #cfcfcf,825px 0 0 -5px #cfcfcf,826px 0 0 -5px #cfcfcf,827px 0 0 -5px #cfcfcf,828px 0 0 -5px #cfcfcf,829px 0 0 -5px #cfcfcf,830px 0 0 -5px #cfcfcf,831px 0 0 -5px #cfcfcf,832px 0 0 -5px #cfcfcf,833px 0 0 -5px #cfcfcf,834px 0 0 -5px #cfcfcf,835px 0 0 -5px #cfcfcf,836px 0 0 -5px #cfcfcf,837px 0 0 -5px #cfcfcf,838px 0 0 -5px #cfcfcf,839px 0 0 -5px #cfcfcf,840px 0 0 -5px #cfcfcf,841px 0 0 -5px #cfcfcf,842px 0 0 -5px #cfcfcf,843px 0 0 -5px #cfcfcf,844px 0 0 -5px #cfcfcf,845px 0 0 -5px #cfcfcf,846px 0 0 -5px #cfcfcf,847px 0 0 -5px #cfcfcf,848px 0 0 -5px #cfcfcf,849px 0 0 -5px #cfcfcf,850px 0 0 -5px #cfcfcf,851px 0 0 -5px #cfcfcf,852px 0 0 -5px #cfcfcf,853px 0 0 -5px #cfcfcf,854px 0 0 -5px #cfcfcf,855px 0 0 -5px #cfcfcf,856px 0 0 -5px #cfcfcf,857px 0 0 -5px #cfcfcf,858px 0 0 -5px #cfcfcf,859px 0 0 -5px #cfcfcf,860px 0 0 -5px #cfcfcf,861px 0 0 -5px #cfcfcf,862px 0 0 -5px #cfcfcf,863px 0 0 -5px #cfcfcf,864px 0 0 -5px #cfcfcf,865px 0 0 -5px #cfcfcf,866px 0 0 -5px #cfcfcf,867px 0 0 -5px #cfcfcf,868px 0 0 -5px #cfcfcf,869px 0 0 -5px #cfcfcf,870px 0 0 -5px #cfcfcf,871px 0 0 -5px #cfcfcf,872px 0 0 -5px #cfcfcf,873px 0 0 -5px #cfcfcf,874px 0 0 -5px #cfcfcf,875px 0 0 -5px #cfcfcf,876px 0 0 -5px #cfcfcf,877px 0 0 -5px #cfcfcf,878px 0 0 -5px #cfcfcf,879px 0 0 -5px #cfcfcf,880px 0 0 -5px #cfcfcf,881px 0 0 -5px #cfcfcf,882px 0 0 -5px #cfcfcf,883px 0 0 -5px #cfcfcf,884px 0 0 -5px #cfcfcf,885px 0 0 -5px #cfcfcf,886px 0 0 -5px #cfcfcf,887px 0 0 -5px #cfcfcf,888px 0 0 -5px #cfcfcf,889px 0 0 -5px #cfcfcf,890px 0 0 -5px #cfcfcf,891px 0 0 -5px #cfcfcf,892px 0 0 -5px #cfcfcf,893px 0 0 -5px #cfcfcf,894px 0 0 -5px #cfcfcf,895px 0 0 -5px #cfcfcf,896px 0 0 -5px #cfcfcf,897px 0 0 -5px #cfcfcf,898px 0 0 -5px #cfcfcf,899px 0 0 -5px #cfcfcf,900px 0 0 -5px #cfcfcf,901px 0 0 -5px #cfcfcf,902px 0 0 -5px #cfcfcf,903px 0 0 -5px #cfcfcf,904px 0 0 -5px #cfcfcf,905px 0 0 -5px #cfcfcf,906px 0 0 -5px #cfcfcf,907px 0 0 -5px #cfcfcf,908px 0 0 -5px #cfcfcf,909px 0 0 -5px #cfcfcf,910px 0 0 -5px #cfcfcf,911px 0 0 -5px #cfcfcf,912px 0 0 -5px #cfcfcf,913px 0 0 -5px #cfcfcf,914px 0 0 -5px #cfcfcf,915px 0 0 -5px #cfcfcf,916px 0 0 -5px #cfcfcf,917px 0 0 -5px #cfcfcf,918px 0 0 -5px #cfcfcf,919px 0 0 -5px #cfcfcf,920px 0 0 -5px #cfcfcf,921px 0 0 -5px #cfcfcf,922px 0 0 -5px #cfcfcf,923px 0 0 -5px #cfcfcf,924px 0 0 -5px #cfcfcf,925px 0 0 -5px #cfcfcf,926px 0 0 -5px #cfcfcf,927px 0 0 -5px #cfcfcf,928px 0 0 -5px #cfcfcf,929px 0 0 -5px #cfcfcf,930px 0 0 -5px #cfcfcf,931px 0 0 -5px #cfcfcf,932px 0 0 -5px #cfcfcf,933px 0 0 -5px #cfcfcf,934px 0 0 -5px #cfcfcf,935px 0 0 -5px #cfcfcf,936px 0 0 -5px #cfcfcf,937px 0 0 -5px #cfcfcf,938px 0 0 -5px #cfcfcf,939px 0 0 -5px #cfcfcf,940px 0 0 -5px #cfcfcf,941px 0 0 -5px #cfcfcf,942px 0 0 -5px #cfcfcf,943px 0 0 -5px #cfcfcf,944px 0 0 -5px #cfcfcf,945px 0 0 -5px #cfcfcf,946px 0 0 -5px #cfcfcf,947px 0 0 -5px #cfcfcf,948px 0 0 -5px #cfcfcf,949px 0 0 -5px #cfcfcf,950px 0 0 -5px #cfcfcf,951px 0 0 -5px #cfcfcf,952px 0 0 -5px #cfcfcf,953px 0 0 -5px #cfcfcf,954px 0 0 -5px #cfcfcf,955px 0 0 -5px #cfcfcf,956px 0 0 -5px #cfcfcf,957px 0 0 -5px #cfcfcf,958px 0 0 -5px #cfcfcf,959px 0 0 -5px #cfcfcf,960px 0 0 -5px #cfcfcf,961px 0 0 -5px #cfcfcf,962px 0 0 -5px #cfcfcf,963px 0 0 -5px #cfcfcf,964px 0 0 -5px #cfcfcf,965px 0 0 -5px #cfcfcf,966px 0 0 -5px #cfcfcf,967px 0 0 -5px #cfcfcf,968px 0 0 -5px #cfcfcf,969px 0 0 -5px #cfcfcf,970px 0 0 -5px #cfcfcf,971px 0 0 -5px #cfcfcf,972px 0 0 -5px #cfcfcf,973px 0 0 -5px #cfcfcf,974px 0 0 -5px #cfcfcf,975px 0 0 -5px #cfcfcf,976px 0 0 -5px #cfcfcf,977px 0 0 -5px #cfcfcf,978px 0 0 -5px #cfcfcf,979px 0 0 -5px #cfcfcf,980px 0 0 -5px #cfcfcf,981px 0 0 -5px #cfcfcf,982px 0 0 -5px #cfcfcf,983px 0 0 -5px #cfcfcf,984px 0 0 -5px #cfcfcf,985px 0 0 -5px #cfcfcf,986px 0 0 -5px #cfcfcf,987px 0 0 -5px #cfcfcf,988px 0 0 -5px #cfcfcf,989px 0 0 -5px #cfcfcf,990px 0 0 -5px #cfcfcf,991px 0 0 -5px #cfcfcf,992px 0 0 -5px #cfcfcf,993px 0 0 -5px #cfcfcf,994px 0 0 -5px #cfcfcf,995px 0 0 -5px #cfcfcf,996px 0 0 -5px #cfcfcf,997px 0 0 -5px #cfcfcf,998px 0 0 -5px #cfcfcf,999px 0 0 -5px #cfcfcf,1000px 0 0 -5px #cfcfcf;transition:background-color .15s}.hs-input-range__slider::-moz-range-progress,.hs-input-range__slider::-moz-range-track{width:100%;height:30px;background:linear-gradient(180deg,#cfcfcf,#cfcfcf) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-moz-range-progress{background:linear-gradient(180deg,#0199ff,#0199ff) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-moz-range-thumb{appearance:none;margin:0;height:13px;width:13px;background:#0199ff;border-radius:100%;border:0;transition:background-color .15s}.hs-input-range__slider::-ms-track{width:100%;height:30px;border:0;color:transparent;background:transparent}.hs-input-range__slider::-ms-fill-lower{background:linear-gradient(180deg,#0199ff,#0199ff) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-ms-fill-upper{background:linear-gradient(180deg,#cfcfcf,#cfcfcf) 100% 50%/100% 3px no-repeat transparent}.hs-input-range__slider::-ms-thumb{appearance:none;height:13px;width:13px;background:#0199ff;border-radius:100%;border:0;transition:background-color .15s;top:0;margin:0;box-shadow:none}.hs-input-range__slider:focus::-webkit-slider-thumb,.hs-input-range__slider:hover::-webkit-slider-thumb{background-color:#55c2ff}.hs-input-range__slider:focus::-moz-range-thumb,.hs-input-range__slider:hover::-moz-range-thumb{background-color:#55c2ff}.hs-input-range__slider:focus::-ms-thumb,.hs-input-range__slider:hover::-ms-thumb{background-color:#55c2ff}.hs-input-rating__container{width:95%;margin-bottom:30px;display:table;table-layout:fixed}.hs-input-rating__container section{display:table-row}.hs-input-rating__label{position:relative;display:table-cell;vertical-align:middle;text-align:center}.hs-input-rating__label input,.hs-input-rating__label svg{position:absolute;top:20px;left:0;right:0;margin-left:auto;margin-right:auto;display:block;cursor:pointer}.hs-input-rating__label svg{position:absolute;width:45px;height:45px;fill:#fff;stroke:#ccc;transform:scale(.6);transition:transform .2s ease-in-out}.hs-input-rating__label path{transition:fill .2s ease-in-out,stroke .1s ease-in-out}.hs-input-rating__is-star input{display:none}.hs-input-rating__svg-is-selected{transform:scale(.7)}.hs-input-rating__svg-is-selected path{fill:#f7e31b;stroke:#d7c508}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .hs-button{white-space:pre-wrap}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .hs-richtext{word-break:break-word}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15.submitted-message{overflow:auto}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset{border:0;padding:0;margin:0;max-width:500px}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-1 .hs-input{width:95%}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-1 .input{margin-right:8px}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-1 input[type=checkbox],.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-1 input[type=radio]{width:auto}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-2 .hs-form-field{width:50%;float:left}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-2 .input{margin-right:8px}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-3 .hs-form-field{width:32.7%;float:left}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 fieldset.form-columns-3 .input{margin-right:8px}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 label.hs-hidden{visibility:hidden}.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15 .hs-field-desc{width:100%}.hs-custom-style .hs-input,.hs-custom-style fieldset{max-width:100%}.hs-custom-style>div.form-columns-3 .hs-form-field,.hs-custom-style fieldset.form-columns-3 .hs-form-field{width:33.3%}.hs-custom-style>div>div:last-of-type .hs-input:not([type=checkbox]):not([type=radio]),.hs-custom-style fieldset>div:last-of-type .hs-input:not([type=checkbox]):not([type=radio]){width:100%;max-width:100%}.hs-custom-style>div input:not([type=image]):not([type=submit]):not([type=button]):not([type=radio]):not([type=checkbox]):not([type=file]),.hs-custom-style fieldset input:not([type=image]):not([type=submit]):not([type=button]):not([type=radio]):not([type=checkbox]):not([type=file]){box-sizing:border-box;padding:0 15px;min-height:27px}.hs-custom-style .hs-dependent-field>div .hs-input:not([type=checkbox]):not([type=radio]){width:100%}@media (max-width:400px),(min-device-width:320px) and (max-device-width:480px){.hs-custom-style .hs-input:not([type=checkbox]):not([type=radio]),.hs-custom-style fieldset{margin-right:0!important;width:100%!important}form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-2 .hs-form-field,form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-3 .hs-form-field{float:none;width:100%}form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-2 .hs-form-field .hs-input,form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-3 .hs-form-field .hs-input{width:95%}form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-2 .hs-form-field input[type=checkbox],form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-2 .hs-form-field input[type=radio],form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-3 .hs-form-field input[type=checkbox],form.hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15:not(.hs-video-form) .form-columns-3 .hs-form-field input[type=radio]{width:auto}}.legal-consent-container .field.hs-form-field{margin-bottom:8px}.legal-consent-container .hs-field-desc.checkbox-desc{margin:-12px 0 0 21px}.legal-consent-container .hs-form-booleancheckbox-display input{float:left}.legal-consent-container .hs-form-booleancheckbox-display>span{display:block;margin-left:20px}.legal-consent-container .hs-form-booleancheckbox-display p{margin:0;display:inline}.legal-consent-container .hs-error-msgs label{color:#f2545b}.legal-consent-container~.hs_recaptcha{margin-top:18px}.cookie-reset-container{font-size:14px;margin-bottom:10px;text-align:right}



#hs-outer-captcha-target,#hs-outer-captcha-target *{display:none;height:0;width:0}.hubspot-link__container{font-size:14px;padding-bottom:40px;position:relative;color:#9fa0a2;font-family:Helvetica Neue,Helvetica,Arial,sans-serif}.hubspot-link-text{color:#00a4bd;font-weight:400}.hubspot-link__container.sproket{color:#9fa0a2}.hubspot-link{color:#9fa0a2}.hubspot-link,.hubspot-link:hover{text-decoration:none}.hubspot-link:hover .hubspot-link-text{text-decoration:underline}.hubspot-link__icon{margin-bottom:-1px;margin-right:5px}.hubspot-link__container.sproket .hubspot-link__icon{width:30px;margin-right:0;float:left;margin-top:-9px;margin-left:-5px}

</style></head>

  <body id="learn" class="layout-default no-type tutorials-view no-touch" ontouchstart="">
    <script>;</script>
    <div class="wrapper" itemscope="" itemtype="http://schema.org/WebSite">
      <meta itemprop="url" content="https://learn.sparkfun.com/">
      <div class="wrapper-inner">

    
<div class="header">
  <div class="container">

    <!-- Mobile Nav Button -->
    <div class="mobile-menu-container left">
      <a id="nav_toggle" class="mobile-menu-button nav_toggle" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#" aria-expanded="false"><span class="sfe-icon-hamburger"></span></a>
              <a id="search_toggle" class="mobile-menu-button" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#"><span class="glyphicon glyphicon-search"></span></a>
          </div>

    <nav class="top-links">
      <ul>
        <li>
          <a href="https://www.sparkfun.com/distributors">Find a Retailer</a>        </li>
                  <li>
            <div class="dropdown">
              <a href="https://learn.sparkfun.com/tutorials/analog-vs-digital#" id="phone_hours" type="button" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                Need Help?
                <span class="caret"></span>
              </a>
              <div class="dropdown-menu pull-right need-help" role="menu" aria-labelledby="phone_hours">
                <h4>Customer Service</h4>
                <p><a href="https://www.sparkfun.com/orders/"><span class="glyphicon glyphicon-dashboard"></span> Track My Order</a></p>
                <p><a href="https://www.sparkfun.com/support"><span class="glyphicon glyphicon-question-sign"></span> Frequently Asked Questions</a></p>
                <p><a href="https://www.sparkfun.com/support#InternationalShipping"><span class="glyphicon glyphicon-globe"></span> International Shipping Info</a></p>
                <p><a href="mailto:support@sparkfun.com"><span class="glyphicon glyphicon-envelope"></span> Send Email</a></p>
                <p class="small text-muted">
                  Mon-Fri, 9am to 12pm and<br>
                  1pm to 5pm U.S. Mountain Time:
                </p>
                <p><span class="glyphicon glyphicon-earphone"></span> (303) 284-0979</p>
                              </div>
            </div>
          </li>
              </ul>
    </nav>

    <!-- Logo -->
    <div class="logo-container">
      <a class="logo" href="https://www.sparkfun.com/">
        <span class="sfe-icon-flame"></span>
        <span class="sfe-icon-sparkfun" data-icon="🔥">
          <span class="visuallyhidden">sparkfun.com</span>
        </span>
      </a>
    </div>

    <!-- Tabs -->
    <!-- also edit mobile tabs in .tabs-container-mobile -->
    <nav class="tabs-container hidden-xs">
      <ul>
        <li class="shop "><a href="https://www.sparkfun.com/categories">Shop</a></li>
        <li class="learn active"><a href="https://learn.sparkfun.com/">Learn</a></li>
        <li class="blog "><a href="https://www.sparkfun.com/news">Blog</a></li>
        <li class="services "><a href="https://www.sparkfun.com/services">Services</a></li>
      </ul>
    </nav>

    <!-- Cart & User -->
    <div class="user-container mobile-menu-container right">

      <a id="account_toggle" class="mobile-menu-button" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#"><span class="glyphicon glyphicon-user"></span></a>

              <div class="cart mobile-menu-button">
          <a href="https://www.sparkfun.com/cart">
            <span id="cart_status" class="sfe-icon-carticon cart-empty">
              <span class="visuallyhidden">Shopping Cart</span>
            </span>
            <span class="cart_count">
              <span id="items_in_cart">0</span>
              <span id="cart_noun" class="visuallyhidden">items</span>
            </span>
          </a>
        </div>
      
              <div class="user">
          <!-- login modal trigger -->
          <a class="btn btn-default" href="https://www.sparkfun.com/account/login?redirect=%2Flearn%2Ftutorials%2Fanalog-vs-digital" data-toggle="modal" data-target="#login_modal" data-remote="false">log in</a>
          <a class="btn btn-default" href="https://www.sparkfun.com/account/make">register</a>        </div>
      
    </div>

    <nav class="tabs-container-mobile visible-xs col-xs-12">
      <ul>
        <li class="shop "><a href="https://www.sparkfun.com/categories">Shop</a></li>
        <li class="learn active"><a href="https://learn.sparkfun.com/">Learn</a></li>
        <li class="blog "><a href="https://www.sparkfun.com/news">Blog</a></li>
        <li class="services "><a href="https://www.sparkfun.com/services">Services</a></li>
      </ul>
    </nav>

  </div>

  <!-- Navigation / Search -->
  <div class="main-nav-container">

    <div class="container">

      <nav class="product-nav">
        <button type="button" class="product-menu" aria-expanded="false">
          <span class="menu-icon sfe-icon-hamburger"></span>
          <span class="product-menu-name">Product Menu</span>
        </button>

                  <form id="search_form" class="search" action="https://www.sparkfun.com/search/results" method="get" itemprop="potentialAction" itemscope="" itemtype="http://schema.org/SearchAction">
            <meta itemprop="target" content="https://www.sparkfun.com/search/results?term={term}">
            <div class="ui-widget">
              <input name="term" id="global-search" class="form-control ui-autocomplete-input" type="text" value="" placeholder="find products, tutorials, etc..." itemprop="query-input" autocomplete="off">
              <button type="submit" class="glyphicon glyphicon-search global-search-icon" aria-label="Search"></button>
            </div>
          </form>
              </nav>

      <nav class="sub-nav">
        <ul>
          <li>
            <a href="https://alc.sparkfun.com/"><span class="sfe-icon-a-la-carte"></span></a>          </li>
          <li>
            <a href="https://www.sparkfun.com/sales">Today's Deals</a>          </li>
          <li class="hidden-sm">
            <a href="https://www.sparkfun.com/sparkx"><span class="sfe-icon-sparkx"></span></a>          </li>
          <li>
            <a href="https://forum.sparkfun.com/" target="_blank">Forum</a>
          </li>
        </ul>
      </nav>

    </div>

    <div class="product-menu-container" tabindex="-1" aria-hidden="true">
      <div class="container">

        <div class="fixed-product-menu-container col-lg-2 col-sm-3 col-xs-12">
          <div class="sub-nav-mobile product-menu-group">
            <a class="product-menu-heading" href="https://www.sparkfun.com/sales">Today's Deals</a>            <a class="product-menu-heading" href="https://www.sparkfun.com/sparkx"><span class="sfe-icon-sparkx"></span></a>            <a class="product-menu-heading" href="https://alc.sparkfun.com/"><span class="sfe-icon-a-la-carte"></span></a>            <a class="product-menu-heading" href="https://forum.sparkfun.com/" target="_blank">Forum</a>
            <a class="product-menu-heading desktop-toggle" href="https://www.sparkfun.com/account/mobile_toggle?redirect=%2Flearn%2Ftutorials%2Fanalog-vs-digital">Desktop Site</a>            <ul class="list-unstyled">
            </ul>
          </div>
          <div class="product-menu-group">
            <a class="product-menu-heading" href="https://www.sparkfun.com/categories">All Categories</a>            <ul class="list-unstyled">
            </ul>
          </div>
          <div class="product-menu-group">
            <a class="product-menu-heading" href="https://www.sparkfun.com/categories/featured">Featured <span class="visible-xs pull-right glyphicon glyphicon-plus"></span></a>            <ul class="list-unstyled">
              <li><a class="product-menu-item" href="https://www.sparkfun.com/categories/new_products">New Products</a></li>
              <li><a class="product-menu-item" href="https://www.sparkfun.com/categories/top"><span class="sfe-icon-flame"></span> Top Sellers</a></li>
                            <li><a class="product-menu-item" href="https://www.sparkfun.com/categories/283"><span class="sfe-icon-sparkx"></span></a></li>
              <li><a class="product-menu-item" href="https://www.sparkfun.com/categories/sale">Sale</a></li>
              <li><a class="product-menu-item" href="https://www.sparkfun.com/gift_certificates">Gift Certificates</a></li>
            </ul>
          </div>
                      <a href="https://bit.ly/31OmZVs" class="hidden-xs">
              <img class="img-responsive img-rounded center-block" src="./il_files/ALC-dropdown-image.jpg" alt="A La Carte">
            </a>
                  </div>

                              <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/287" class="product-menu-heading">
                 Brands                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/featured" class="product-menu-item">
                                              <span class="product-menu-item-icon sfe-icon-flame" style="color:#ee2e22"></span> SparkFun                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/103" class="product-menu-item">
                                              <span class="product-menu-item-icon sfe-icon-arduino" style="color:#00878f"></span> Arduino                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/233" class="product-menu-item">
                                              <span class="product-menu-item-icon sfe-icon-rpi-multi-color" style="color:#ffffff"><span class="path1"></span><span class="path2"></span><span class="path3"></span></span> Raspberry Pi                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/qwiic" class="product-menu-item">
                                              <span class="product-menu-item-icon sfe-icon-qwiic" style="color:#ffffff"></span> Qwiic                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/284" class="product-menu-item">
                                               micro:bit                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/287" class="product-menu-item">
                                               <small>all brands</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/2" class="product-menu-heading">
                 Development                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/299" class="product-menu-item">
                                               Single Board Comp.                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/300" class="product-menu-item">
                                               Microcontrollers                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/419" class="product-menu-item">
                                               Machine Learning                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/136" class="product-menu-item">
                                               FPGA                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/149" class="product-menu-item">
                                               Prototyping Boards                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/2" class="product-menu-item">
                                               <small>all development</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/23" class="product-menu-heading">
                 Sensors                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/304" class="product-menu-item">
                                               Movement                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/146" class="product-menu-item">
                                               Biometrics                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/102" class="product-menu-item">
                                               Imaging                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/305" class="product-menu-item">
                                               Environment                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/117" class="product-menu-item">
                                               Capacitive                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/23" class="product-menu-item">
                                               <small>all sensors</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/46" class="product-menu-heading">
                 Tools                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/271" class="product-menu-item">
                                               3D Printing                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/280" class="product-menu-item">
                                               CNC                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/49" class="product-menu-item">
                                               Soldering                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/47" class="product-menu-item">
                                               Hand Tools                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/177" class="product-menu-item">
                                               Instruments                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/46" class="product-menu-item">
                                               <small>all tools</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/310" class="product-menu-heading">
                 Miscellaneous                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/157" class="product-menu-item">
                                               All Kits                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/176" class="product-menu-item">
                                               Books                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/311" class="product-menu-item">
                                               Arts/Crafts Supplies                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/351" class="product-menu-item">
                                               SD Cards                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/130" class="product-menu-item">
                                               Swag                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/310" class="product-menu-item">
                                               <small>all misc</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/51" class="product-menu-heading">
                 Components                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/89" class="product-menu-item">
                                               LED &amp; Illumination                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/145" class="product-menu-item">
                                               Buttons &amp; Switches                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/76" class="product-menu-item">
                                               LCDs &amp; OLEDs                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/28" class="product-menu-item">
                                               Power                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/70" class="product-menu-item">
                                               Cables &amp; Wire                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/51" class="product-menu-item">
                                               <small>all components</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/204" class="product-menu-heading">
                 E-Textiles                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/327" class="product-menu-item">
                                               LilyPad                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/328" class="product-menu-item">
                                               Sewable Electronics                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/206" class="product-menu-item">
                                               Materials                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/268" class="product-menu-item">
                                               E-Textile Power                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/329" class="product-menu-item">
                                               E-Textile Kits                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/204" class="product-menu-item">
                                               <small>all e-textiles</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/31" class="product-menu-heading">
                 Robotics                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/pages/Actobotics" class="product-menu-item">
                                               Actobotics                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/178" class="product-menu-item">
                                               Motors &amp; Drivers                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/330" class="product-menu-item">
                                               Parts                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/155" class="product-menu-item">
                                               Hardware                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/181" class="product-menu-item">
                                               Robotics Kits                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/31" class="product-menu-item">
                                               <small>all robotics</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/16" class="product-menu-heading">
                 Wireless &amp; IoT                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/115" class="product-menu-item">
                                               Bluetooth                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/112" class="product-menu-item">
                                               WiFi                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/338" class="product-menu-item">
                                               Satellite                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/4" class="product-menu-item">
                                               GPS &amp; GNSS                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/339" class="product-menu-item">
                                               Wireless Kits                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/16" class="product-menu-item">
                                               <small>all wireless/IoT</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                      <div class="product-menu-group col-lg-2 col-sm-3 col-xs-12">
              <a href="https://www.sparkfun.com/categories/273" class="product-menu-heading">
                 Audio                <span class="visible-xs pull-right glyphicon glyphicon-plus"></span>
              </a>
              <ul class="list-unstyled">
                                  <li>
                    <a href="https://www.sparkfun.com/categories/343" class="product-menu-item">
                                               Audio Boards                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/342" class="product-menu-item">
                                               Audio Cables                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/344" class="product-menu-item">
                                               Speakers                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/345" class="product-menu-item">
                                               Audio Chips                                          </a>
                  </li>
                                  <li>
                    <a href="https://www.sparkfun.com/categories/273" class="product-menu-item">
                                               <small>all audio</small>
                                          </a>
                  </li>
                              </ul>
            </div>
                  
      </div>
    </div>

  </div>
</div>


    
    <div class="content">
      <div class="container" id="airlock">

        
        <div class="main-title">
  <ul class="breadcrumb">
    <li><a href="https://learn.sparkfun.com/">Home</a></li>
    <li><a href="https://learn.sparkfun.com/tutorials">Tutorials</a></li>
    <li>Analog vs. Digital</li>
      </ul>

  <h1>
    Analog vs. Digital  </h1>

</div>


<a id="nav_toggle_pages" class="nav_toggle nav-toggle-trigger" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#"><span>≡</span> Pages</a>

<div id="tutorial" class="row">

  <div class="col-sm-8" id="sections">

    <div class="contributors">
                      Contributors:
                <a href="https://www.sparkfun.com/users/69916"><img src="./il_files/3d3509851c3a5223dbe27da5fddd33df.jpeg"> jimblom</a>          </div>

    <span class="fave_widget verbose">
  <a href="https://learn.sparkfun.com/tutorials/analog-vs-digital#" class="fave_btn " title="Add to favorites" data-entity="learn_tutorials" data-entity-id="89">
    <span class="fave_yes">
      <span class="glyphicon glyphicon-heart"></span>
      <span class="name">Favorited</span>
    </span>
    <span class="fave_no">
      <span class="glyphicon glyphicon-heart-empty"></span>
      <span class="name">Favorite</span>
    </span>
  </a>
  <span class="fave_count">57</span>
</span>    <div class="share-link-inline">

  <a class="share-link-toggle" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#">
    <span class="share-title">
      <span class="sfe-icon-share"></span>
      Share    </span>
  </a>

  <div class="share-link-inner dialog">
    Use this URL to share:<br>
    <input class="form-control input-sm" type="text" value="http://sfe.io/t89" onclick="$(this).trigger(&#39;select&#39;);">

    <div class="share-social">

      <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;googleplus&#39;);" href="https://plus.google.com/share?url=http%3A%2F%2Fsfe.io%2Ft89" title="Share on Google+"><span class="sfe-icon-google-plus hidetext"><span>Share on Google+</span></span></a>

      <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;tumblr&#39;);" href="https://www.tumblr.com/share/link?url=http%3A%2F%2Fsfe.io%2Ft89&amp;name=Analog+vs.+Digital" title="Share on Tumblr"><span class="sfe-icon-tumblr hidetext"><span>Share on Tumblr</span></span></a>

      <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;reddit&#39;);" href="https://www.reddit.com/submit?url=http%3A%2F%2Fsfe.io%2Ft89" title="Submit to reddit"><span class="sfe-icon-reddit hidetext"><span>Submit to reddi</span></span></a>

    </div>

    </div>
  
  <div class="share-social">

    <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;twitter&#39;);" href="https://twitter.com/intent/tweet?text=Analog+vs.+Digital&amp;url=http%3A%2F%2Fsfe.io%2Ft89&amp;via=sparkfun" title="Share on Twitter"><span class="sfe-icon-twitter hidetext"><span>Share on Twitter</span></span></a>

    <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;facebook&#39;);" href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fsfe.io%2Ft89&amp;t=Analog+vs.+Digital" title="Share on Facebook"><span class="sfe-icon-facebook-nobox hidetext"><span>Share on Facebook</span></span></a>

          <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;pinterest&#39;);" href="https://www.pinterest.com/pin/create/button/?url=http%3A%2F%2Fsfe.io%2Ft89&amp;media=https%3A%2F%2Fcdn.sparkfun.com%2F%2Fr%2F500-1000%2Fassets%2F3%2F7%2F6%2F6%2F0%2F51c48875ce395f745a000000.png&amp;description=Analog+vs.+Digital" title="Pin It"><span class="sfe-icon-pinterest hidetext"><span>Pin It</span></span></a>
    
  </div>

  
</div>

          <div class="section tutorial-page">
        <h2 id="overview">Overview</h2>
        <p>We live in an analog world. There are an infinite amount of colors to paint an object (even if the difference is indiscernible to our eye), there are an infinite number of tones we can hear, and there are an infinite number of smells we can smell. The common theme among all of these analog signals is their <strong>infinite</strong> possibilities.</p>

<p>Digital signals and objects deal in the realm of the <strong>discrete</strong> or <strong>finite</strong>, meaning there is a limited set of values they can be. That could mean just two total possible values, 255, 4,294,967,296, or anything as long as it's not ∞ (infinity).</p>

<p></p><div class="center-block text-center"> <a href="https://cdn.sparkfun.com/assets/4/a/e/6/f/51c9c988ce395fab0e000000.png"><img src="./il_files/51c9c988ce395fab0e000000.png" alt="Analog and digital real-life items"></a> </div><p></p>

<p></p><div class="center-block text-center"> <em>Real-world objects can display data, gather inputs by either analog or digital means. (From left to right): Clocks, <a href="https://learn.sparkfun.com/tutorials/how-to-use-a-multimeter">multimeters</a>, and joysticks can all take either form (analog above, digital below).</em> </div><p></p>

<p>Working with electronics means dealing with both analog and digital signals, inputs and outputs. Our electronics projects have to interact with the real, analog world in some way, but most of our microprocessors, computers, and logic units are purely digital components. These two types of signals are like different electronic languages; some electronics components are bi-lingual, others can only understand and speak one of the two.</p>

<p>In this tutorial, we'll cover the basics of both digital and analog signals, including examples of each. We'll also talk about analog and digital circuits, and components.</p>

<div>
  <style type="text/css" scoped="">
    hs.button { 
    color: #fff !important;
    background-color: #e0311d !important;
    border-color: #c92c1a !important;
    font-weight: 700 !important;
    font-family: SparkGauge,"Arial Narrow","Helvetica Neue",Helvetica,Arial,sans-serif !important;
    letter-spacing: .1em !important;
    }
  </style>
<p>&nbsp;</p>
<div class="col-md-12" style="padding-left:0;">
<div class="alert alert-default" style="background-color:#f7f7f7; min-height:380px;">
<div align="center" class="col-md-5" style="margin-top:20px;">
<img src="./il_files/analog_vs_digital_thumb.png" class="img-responsive" alt="Analog and Digital Signals">
</div>
<div class="col-md-7">
<!--[if lte IE 8]>
<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script>
<![endif]-->
<script charset="utf-8" type="text/javascript" src="./il_files/v2.js.download"></script>
<script data-hubspot-rendered="true">
  hbspt.forms.create({
    portalId: "2224003",
    formId: "03538fc5-8452-4772-a7f0-bc5fc3f72f52",
    css: ""
});
</script><div class="hbspt-form" id="hbspt-form-1620326675850-1724585663"><form novalidate="" accept-charset="UTF-8" action="https://forms.hsforms.com/submissions/v3/public/submit/formsnext/multipart/2224003/03538fc5-8452-4772-a7f0-bc5fc3f72f52" enctype="multipart/form-data" id="hsForm_03538fc5-8452-4772-a7f0-bc5fc3f72f52" method="POST" class="hs-form stacked hs-form-private hsForm_03538fc5-8452-4772-a7f0-bc5fc3f72f52 hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52 hs-form-03538fc5-8452-4772-a7f0-bc5fc3f72f52_c8624cd2-57a3-44b5-9189-6583cfdefd15" data-form-id="03538fc5-8452-4772-a7f0-bc5fc3f72f52" data-portal-id="2224003" target="target_iframe_03538fc5-8452-4772-a7f0-bc5fc3f72f52" data-reactid=".hbspt-forms-1"><div data-reactid=".hbspt-forms-1.1:$0"><div class="hs-richtext hs-main-font-element" data-reactid=".hbspt-forms-1.1:$0.0"><h3>Get a high-resolution reference guide for Analog and Digital Signals.</h3>
<p>Give your classroom, office, or workspace a quick way to reference the differences and relationships between analog and digital signals.</p></div><div class="hs_email hs-email hs-fieldtype-text field hs-form-field" data-reactid=".hbspt-forms-1.1:$0.$email"><label id="label-email-03538fc5-8452-4772-a7f0-bc5fc3f72f52" class="" placeholder="Enter your Email" for="email-03538fc5-8452-4772-a7f0-bc5fc3f72f52" data-reactid=".hbspt-forms-1.1:$0.$email.0"><span data-reactid=".hbspt-forms-1.1:$0.$email.0.0">Email</span><span class="hs-form-required" data-reactid=".hbspt-forms-1.1:$0.$email.0.1">*</span></label><legend class="hs-field-desc" style="display:none;" data-reactid=".hbspt-forms-1.1:$0.$email.1"></legend><div class="input" data-reactid=".hbspt-forms-1.1:$0.$email.$email"><input id="email-03538fc5-8452-4772-a7f0-bc5fc3f72f52" class="hs-input invalid error" type="email" name="email" required="" placeholder="" value="" autocomplete="email" data-reactid=".hbspt-forms-1.1:$0.$email.$email.0" inputmode="email"></div><ul class="no-list hs-error-msgs inputs-list" style="display: block;" role="alert" data-reactid=".hbspt-forms-1.1:$0.$email.3"><li data-reactid=".hbspt-forms-1.1:$0.$email.3.$0"><label class="hs-error-msg" data-reactid=".hbspt-forms-1.1:$0.$email.3.$0.0">Email must be formatted correctly.</label></li></ul></div></div><div class="hs_main_newsletter_subscriber hs-main_newsletter_subscriber hs-fieldtype-booleancheckbox field hs-form-field" data-reactid=".hbspt-forms-1.1:$1"><legend class="hs-field-desc" style="display:block;" data-reactid=".hbspt-forms-1.1:$1.1">Would you also like to subscribe to our weekly newsletter?</legend><div class="input" data-reactid=".hbspt-forms-1.1:$1.$main_newsletter_subscriber"><ul class="inputs-list" data-reactid=".hbspt-forms-1.1:$1.$main_newsletter_subscriber.0"><li class="hs-form-booleancheckbox" data-reactid=".hbspt-forms-1.1:$1.$main_newsletter_subscriber.0.0"><label for="main_newsletter_subscriber-03538fc5-8452-4772-a7f0-bc5fc3f72f52" class="hs-form-booleancheckbox-display" data-reactid=".hbspt-forms-1.1:$1.$main_newsletter_subscriber.0.0.0"><input id="main_newsletter_subscriber-03538fc5-8452-4772-a7f0-bc5fc3f72f52" class="hs-input" type="checkbox" name="main_newsletter_subscriber" value="true" data-reactid=".hbspt-forms-1.1:$1.$main_newsletter_subscriber.0.0.0.0"><span data-reactid=".hbspt-forms-1.1:$1.$main_newsletter_subscriber.0.0.0.1">Yes, sign me up!</span></label></li></ul></div></div><noscript data-reactid=".hbspt-forms-1.2"></noscript><div class="hs_submit hs-submit" data-reactid=".hbspt-forms-1.5"><div class="hs-field-desc" style="display:none;" data-reactid=".hbspt-forms-1.5.0"></div><div class="actions" data-reactid=".hbspt-forms-1.5.1"><input type="submit" value="Send me the guide!" class="hs-button primary large" data-reactid=".hbspt-forms-1.5.1.0"></div></div><noscript data-reactid=".hbspt-forms-1.6"></noscript><input name="hs_context" type="hidden" value="{&quot;rumScriptExecuteTime&quot;:962.2850000159815,&quot;rumServiceResponseTime&quot;:1750.1650000340305,&quot;rumFormRenderTime&quot;:3.374999971129,&quot;rumTotalRenderTime&quot;:1753.759999992326,&quot;rumTotalRequestTime&quot;:785.3849999955855,&quot;lang&quot;:&quot;en&quot;,&quot;renderRawHtml&quot;:&quot;true&quot;,&quot;embedAtTimestamp&quot;:&quot;1620326676524&quot;,&quot;formDefinitionUpdatedAt&quot;:&quot;1539100786837&quot;,&quot;pageUrl&quot;:&quot;https://learn.sparkfun.com/tutorials/analog-vs-digital&quot;,&quot;pageTitle&quot;:&quot;Analog vs. Digital - learn.sparkfun.com&quot;,&quot;source&quot;:&quot;FormsNext-static&quot;,&quot;timestamp&quot;:1620326676524,&quot;userAgent&quot;:&quot;Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36&quot;,&quot;referrer&quot;:&quot;https://moodle.oulu.fi/&quot;,&quot;originalEmbedContext&quot;:{&quot;portalId&quot;:&quot;2224003&quot;,&quot;formId&quot;:&quot;03538fc5-8452-4772-a7f0-bc5fc3f72f52&quot;,&quot;target&quot;:&quot;#hbspt-form-1620326675850-1724585663&quot;},&quot;boolCheckBoxFields&quot;:&quot;main_newsletter_subscriber&quot;,&quot;formValidity&quot;:{&quot;email&quot;:{&quot;valid&quot;:false,&quot;errors&quot;:[&quot;Email must be formatted correctly.&quot;],&quot;errorTypes&quot;:[&quot;INVALID_EMAIL&quot;]}},&quot;formTarget&quot;:&quot;#hbspt-form-1620326675850-1724585663&quot;,&quot;correlationId&quot;:&quot;7e7283cd-3377-4ce3-b56e-8862169c0b17&quot;,&quot;useRecaptchaEnterprise&quot;:true}" data-reactid=".hbspt-forms-1.7"><iframe name="target_iframe_03538fc5-8452-4772-a7f0-bc5fc3f72f52" style="display:none;" data-reactid=".hbspt-forms-1.8" src="./il_files/saved_resource.html"></iframe></form></div>
</div>
</div>
</div>
<p>&nbsp;</p>
<div class="clearfix"></div>

</div>

<h3>Suggested Reading</h3>

<p>The concepts of analog and digital stand on their own, and don't require a lot of previous electronics knowledge. That said, if you haven't already, you should peek through some of these tutorials:</p>

<ul>
<li><a href="https://learn.sparkfun.com/tutorials/voltage-current-resistance-and-ohms-law">Voltage, Current, Resistance and Ohm's Law</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/what-is-a-circuit">What is a Circuit</a></li>
<li>And some mathematics concepts: reading graphs, and understanding the difference between finite and infinite sets.</li>
</ul>      </div>
          <div class="section tutorial-page">
        <h2 id="analog-signals">Analog Signals</h2>
        <h4>Define: Signals</h4>

<p>Before going too much further, we should talk a bit about what a <em>signal</em> actually is, electronic signals specifically (as opposed to traffic signals, <a href="http://www.youtube.com/watch?v=z41I3yX_cVI">albums by the ultimate power-trio</a>, or a general means for communication). The signals we're talking about are <strong>time-varying</strong> "quantities" which convey some sort of information. In electrical engineering the <em>quantity</em> that's time-varying is usually <strong>voltage</strong> (if not that, then usually current). So when we talk about signals, just think of them as a voltage that's changing over time.</p>

<p>Signals are passed between devices in order to send and receive information, which might be video, audio, or some sort of encoded data. Usually the signals are transmitted through wires, but they could also pass through the air via radio frequency (RF) waves. Audio signals, for example might be transferred between your computer's audio card and speakers, while data signals might be passed through the air between a tablet and a WiFi router.</p>

<h3>Analog Signal Graphs</h3>

<p>Because a signal varies over time, it's helpful to plot it on a graph where time is plotted on the horizontal, <em>x</em>-axis, and voltage on the vertical, <em>y</em>-axis. Looking at a graph of a signal is usually the easiest way to identify if it's analog or digital; a time-versus-voltage graph of an analog signal should be <strong>smooth</strong> and <strong>continuous</strong>.</p>

<p></p><div class="center-block text-center"> <a href="./il_files/51c48875ce395f745a000000.png"><img src="./il_files/51c48875ce395f745a000000.png" alt="Analog Sine Wave"></a> </div><p></p>

<p>While these signals may be limited to a <strong>range</strong> of maximum and minimum values, there are still an infinite number of possible values within that range. For example, the analog voltage coming out of your wall socket might be clamped between -120V and +120V, but, as you increase the resolution more and more, you discover an infinite number of values that the signal can actually be (like 64.4V, 64.42V, 64.424V, and infinite, increasingly precise values).</p>

<h3>Example Analog Signals</h3>

<p>Video and audio transmissions are often transferred or recorded using analog signals. The <a href="https://en.wikipedia.org/wiki/Composite_video">composite video</a> coming out of an old RCA jack, for example, is a coded analog signal usually ranging between 0 and 1.073V. Tiny changes in the signal have a huge effect on the color or location of the video.</p>

<p></p><div class="center-block text-center"> <a href="./il_files/51c48c2ece395fd35a000000.png"><img src="./il_files/51c48c2ece395fd35a000000.png" alt="Composite video signal"></a> </div><p></p>

<p></p><div class="center-block text-center"> <em>An analog signal representing one line of composite video data.</em> </div><p></p>

<p>Pure audio signals are also analog. The signal that comes out of a microphone is full of analog frequencies and harmonics, which combine to make beautiful music.</p>      </div>
          <div class="section tutorial-page">
        <h2 id="digital-signals">Digital Signals</h2>
        <p>Digital signals must have a finite set of possible values. The number of values in the set can be anywhere between two and a-very-large-number-that's-not-infinity. Most commonly digital signals will be one of <strong>two values</strong> -- like either 0V or 5V. Timing graphs of these signals look like <strong>square waves</strong>.</p>

<p></p><div class="center-block text-center"> <a href="./il_files/51c495ebce395f1b5a000000.png"><img src="./il_files/51c495ebce395f1b5a000000.png" alt="Square wave signal. Two values, either 0V or 5V."></a> </div><p></p>

<p>Or a digital signal might be a discrete representation of an analog waveform. Viewed from afar, the wave function below may seem smooth and analog, but when you look closely there are tiny discrete <strong>steps</strong> as the signal tries to approximate values:</p>

<p></p><div class="center-block text-center"> <a href="./il_files/51c85fbece395fbc03000000.png"><img src="./il_files/51c85fbece395fbc03000000.png" alt="Digital Sine Wave"></a> </div><p></p>

<p>That's the big difference between analog and digital waves. Analog waves are smooth and continuous, digital waves are stepping, square, and discrete.</p>

<h3>Example Digital Signals</h3>

<p>Not all audio and video signals are analog. Standardized signals like <a href="http://en.wikipedia.org/wiki/HDMI">HDMI</a> for video (and audio) and <a href="http://en.wikipedia.org/wiki/Musical_Instrument_Digital_Interface">MIDI</a>, <a href="http://en.wikipedia.org/wiki/I%C2%B2S">I<sup>2</sup>S</a>, or <a href="http://en.wikipedia.org/wiki/AC%2797">AC'97</a> for audio are all digitally transmitted.</p>

<p>Most communication between <a href="https://learn.sparkfun.com/tutorials/integrated-circuits">integrated circuits</a> is digital. Interfaces like <a href="https://learn.sparkfun.com/tutorials/serial-communication">serial</a>, <a href="https://learn.sparkfun.com/tutorials/i2c">I<sup>2</sup>C</a>, and <a href="https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi">SPI</a> all transmit data via a coded sequence of square waves.</p>

<p></p><div class="center-block text-center"> <a href="./il_files/51c4a21ece395f805a000000.png"><img src="./il_files/51c4a21ece395f805a000000.png" alt="SPI square wave signals"></a> </div><p></p>

<p></p><div class="center-block text-center"> <em>Serial peripheral interface (SPI) uses many digital signals to transmit data between devices.</em> </div><p></p>      </div>
          <div class="section tutorial-page">
        <h2 id="analog-and-digital-circuits">Analog and Digital Circuits</h2>
        <h3>Analog Electronics</h3>

<p>Most of the fundamental electronic components -- <a href="https://learn.sparkfun.com/tutorials/resistors">resistors</a>, <a href="https://learn.sparkfun.com/tutorials/capacitors">capacitors</a>, inductors, <a href="https://learn.sparkfun.com/tutorials/diodes">diodes</a>, transistors, and operational amplifiers -- are all inherently analog. Circuits built with a combination of solely these components are usually analog.</p>

<p></p><div class="center-block text-center"> <a href="https://cdn.sparkfun.com/assets/d/9/e/1/c/51c8bb1ece395fef60000001.png"><img src="./il_files/51c8bb1ece395fef60000001.png" alt="Example analog circuit"></a> </div><p></p>

<p></p><div class="center-block text-center"> <em>Analog circuits are usually complex combinations of op amps, resistors, caps, and other foundational electronic components. This is an example of a class B analog audio amplifier.</em> </div><p></p>

<p>Analog circuits can be very elegant designs with many components, or they can be very simple, like two resistors combining to make a <a href="https://learn.sparkfun.com/tutorials/voltage-dividers">voltage divider</a>. In general, though, analog circuits are much <strong>more difficult to design</strong> than those which accomplish the same task digitally. It takes a special kind of analog circuit wizard to design an analog radio receiver, or an analog battery charger; digital components exist to make those designs <em>much</em> simpler.</p>

<p>Analog circuits are usually much more <strong>susceptible to noise</strong> (small, undesired variations in voltage). Small changes in the voltage level of an analog signal may produce significant errors when being processed.</p>

<h3>Digital Electronics</h3>

<p>Digital circuits operate using digital, discrete signals. These circuits are usually made of a combination of  transistors and <a href="https://learn.sparkfun.com/tutorials/digital-logic/combinational-logic">logic gates</a> and, at higher levels, microcontrollers or other computing chips. Most processors, whether they're big beefy processors in your computer, or tiny little microcontrollers, operate in the digital realm.</p>

<p></p><div class="center-block text-center"> <a href="https://cdn.sparkfun.com/assets/6/0/4/8/1/51c9c1f8ce395fda22000000.png"><img src="./il_files/51c9c1f8ce395fda22000000.png" alt="Example digital circuit"></a> </div><p></p>

<p></p><div class="center-block text-center"> <em>Digital circuits make use of components like logic gates, or more complicated digital ICs (usually represented by rectangles with labeled pins extending from them).</em> </div><p></p>

<p>Digital circuits usually use a <a href="https://learn.sparkfun.com/tutorials/binary">binary</a> scheme for digital signaling. These systems assign two different voltages as two different <a href="https://learn.sparkfun.com/tutorials/logic-levels">logic levels</a> -- a high voltage (usually 5V, 3.3V, or 1.8V) represents one value and a low voltage (usually 0V) represents the other.</p>

<p>Although digital circuits are generally easier to design, they do tend to be a bit <strong>more expensive</strong> than an equally tasked analog circuit.</p>

<h3>Analog and Digital Combined</h3>

<p>It's not rare to see a mixture of analog and digital components in a circuit. Although microcontrollers are usually digital beasts, they often have internal circuitry which enables them to interface with analog circuitry (<a href="https://learn.sparkfun.com/tutorials/analog-to-digital-conversion">analog-to-digital converters</a>, <a href="https://learn.sparkfun.com/tutorials/pulse-width-modulation">pulse-width modulation</a>, and digital-to-analog converters. An analog-to-digital converter (ADC) allows a microcontroller to connect to an analog sensor (like photocells or temperature sensors), to read in an analog voltage. The less common digital-to-analog converter allows a microcontroller to produce analog voltages, which is handy when it needs to make sound.</p>      </div>
          <div class="section tutorial-page">
        <h2 id="res">Resources and Going Further</h2>
        <p>Now that you know the difference between analog and digital signals, we'd suggest checking out the <a href="https://learn.sparkfun.com/tutorials/analog-to-digital-conversion">Analog to Digital Conversion</a> tutorial. Working with microcontrollers, or really any logic-based electronics, means working in the digital realm most of the time. If you want to sense light, temperature, or interface a microcontroller with a variety of other analog sensors, you'll need to know how to convert the analog voltage they produce into a digital value.</p>

<div class="col-sm-12" style="padding-left:0;">
    <div class="alert alert-default" style="background-color:#f7f7f7;">
        <div class="col-sm-8">
            <h2>Interested in learning more foundational topics?</h2>
                <p class="lead">See our <strong><a href="https://www.sparkfun.com/engineering_essentials">Engineering Essentials</a></strong> page for a full list of cornerstone topics surrounding electrical engineering.</p>
                <p><a href="https://www.sparkfun.com/engineering_essentials" class="btn btn-md btn-primary">Take me there!</a></p>
        </div>
        <div class="col-sm-4 hidden-xs" style="margin-top:10px;">
            <img src="./il_files/multimeter-300.png" class="img-responsive">
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<p>Also, consider reading our <a href="https://learn.sparkfun.com/tutorials/pulse-width-modulation">Pulse Width Modulation</a> (PWM) tutorial. PWM is a trick microcontrollers can use to make a digital signal appear to be analog.</p>

<p>Here are some other subjects which deal heavily with digital interfaces:</p>

<ul>
<li><a href="https://learn.sparkfun.com/tutorials/binary">Binary</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/logic-levels">Logic Levels</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/serial-communication">Serial Communication</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi">SPI Communication</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/i2c">I<sup>2</sup>C Communication</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/ir-communication">IR Communication</a></li>
</ul>

<p>Or, if you'd like to delve further into the analog realm, consider checking out these tutorials:</p>

<ul>
<li><a href="https://learn.sparkfun.com/tutorials/voltage-dividers">Voltage Dividers</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/resistors">Resistors</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/diodes">Diodes</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/capacitors">Capacitors</a></li>
<li><a href="https://learn.sparkfun.com/tutorials/transistors">Transistors</a></li>
</ul>      </div>
    
        <div class="share-link-inline">

  <a class="share-link-toggle" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#">
    <span class="share-title">
      <span class="sfe-icon-share"></span>
      Share    </span>
  </a>

  <div class="share-link-inner dialog">
    Use this URL to share:<br>
    <input class="form-control input-sm" type="text" value="http://sfe.io/t89" onclick="$(this).trigger(&#39;select&#39;);">

    <div class="share-social">

      <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;googleplus&#39;);" href="https://plus.google.com/share?url=http%3A%2F%2Fsfe.io%2Ft89" title="Share on Google+"><span class="sfe-icon-google-plus hidetext"><span>Share on Google+</span></span></a>

      <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;tumblr&#39;);" href="https://www.tumblr.com/share/link?url=http%3A%2F%2Fsfe.io%2Ft89&amp;name=Analog+vs.+Digital" title="Share on Tumblr"><span class="sfe-icon-tumblr hidetext"><span>Share on Tumblr</span></span></a>

      <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;reddit&#39;);" href="https://www.reddit.com/submit?url=http%3A%2F%2Fsfe.io%2Ft89" title="Submit to reddit"><span class="sfe-icon-reddit hidetext"><span>Submit to reddi</span></span></a>

    </div>

    </div>
  
  <div class="share-social">

    <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;twitter&#39;);" href="https://twitter.com/intent/tweet?text=Analog+vs.+Digital&amp;url=http%3A%2F%2Fsfe.io%2Ft89&amp;via=sparkfun" title="Share on Twitter"><span class="sfe-icon-twitter hidetext"><span>Share on Twitter</span></span></a>

    <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;facebook&#39;);" href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fsfe.io%2Ft89&amp;t=Analog+vs.+Digital" title="Share on Facebook"><span class="sfe-icon-facebook-nobox hidetext"><span>Share on Facebook</span></span></a>

          <a rel="nofollow" onclick="return $(this).sfeutil(&#39;track_link&#39;,this,&#39;Share&#39;,&#39;clicked&#39;,&#39;pinterest&#39;);" href="https://www.pinterest.com/pin/create/button/?url=http%3A%2F%2Fsfe.io%2Ft89&amp;media=https%3A%2F%2Fcdn.sparkfun.com%2F%2Fr%2F500-1000%2Fassets%2F3%2F7%2F6%2F6%2F0%2F51c48875ce395f745a000000.png&amp;description=Analog+vs.+Digital" title="Pin It"><span class="sfe-icon-pinterest hidetext"><span>Pin It</span></span></a>
    
  </div>

  
</div>

  </div>

  <div class="col-sm-4 nav-menu" id="nav-pages">

    <button type="button" class="close" aria-label="Close"><span aria-hidden="true">×</span></button>

    <div id="sidebar_affix" class="affix" style="">

      <div id="tutorial-pages" class="list-group">
        <a class="list-group-item"><b>Sections</b></a>
                          <a data-pagename="overview" class="list-group-item active" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#overview">
            Overview          </a>
                  <a data-pagename="analog-signals" class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#analog-signals">
            Analog Signals          </a>
                  <a data-pagename="digital-signals" class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#digital-signals">
            Digital Signals          </a>
                  <a data-pagename="analog-and-digital-circuits" class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#analog-and-digital-circuits">
            Analog and Digital Circuits          </a>
                  <a data-pagename="res" class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#res">
            Resources and Going Further          </a>
              </div>

      <div class="list-group">
        <a class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital/discuss">
          Comments
          <span class="badge">2</span>
        </a>
                  <a class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital/overview">
            View Paginated
          </a>
                <a class="list-group-item" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#" onclick="window.print(); return false;">
          Print
        </a>
      </div>

      <ul class="list-group">
        <li class="list-group-item"><b>Tags</b></li>
        <li class="list-group-item"><ul class="tags-list">
  <li>
    <a class="tag" href="https://learn.sparkfun.com/tutorials/tags/concepts">Concepts</a>  </li>
  <li>
    <a class="tag" href="https://learn.sparkfun.com/tutorials/tags/electrical-engineering">Electrical Engineering</a>  </li>
</ul>
</li>
      </ul>

      <ul class="list-group">
        <li class="list-group-item"><b>License</b></li>
        <li class="list-group-item">
          <span class="sfe-icon-cc">
            <span class="visuallyhidden">Creative Commons</span>
          </span>
          <small>tutorials are <a href="https://creativecommons.org/licenses/by-sa/4.0/" target="new">CC BY-SA 4.0</a></small>
        </li>
      </ul>

    </div>
  </div>

</div>

      </div> <!-- /container -->
    </div> <!-- /content -->

    
<footer>

<div class="social">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="newsletter">
          
<!--[if lte IE 8]>
<script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script>
<![endif]-->
<script charset="utf-8" type="text/javascript" src="./il_files/v2.js.download"></script>
<script data-hubspot-rendered="true">
hbspt.forms.create({
portalId: "2224003",
formId: "1f5a7872-dd7a-4e36-99fe-cafe431ba0b2"
});
</script><div class="hbspt-form" id="hbspt-form-1620326675881-5787626274"><form novalidate="" accept-charset="UTF-8" action="https://forms.hsforms.com/submissions/v3/public/submit/formsnext/multipart/2224003/1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" enctype="multipart/form-data" id="hsForm_1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" method="POST" class="hs-form stacked hs-form-private hsForm_1f5a7872-dd7a-4e36-99fe-cafe431ba0b2 hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2 hs-form-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2_a2f2df37-300f-45db-9044-94a757d469e9" data-form-id="1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" data-portal-id="2224003" target="target_iframe_1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" data-reactid=".hbspt-forms-0"><div data-reactid=".hbspt-forms-0.1:$0"><div class="hs-richtext hs-main-font-element" data-reactid=".hbspt-forms-0.1:$0.0"><div align="center"><img src="./il_files/flame-32.png" style="margin: 20px 0px 0px 0px;"></div></div></div><div data-reactid=".hbspt-forms-0.1:$1"><div class="hs-richtext hs-main-font-element" data-reactid=".hbspt-forms-0.1:$1.0"><p style="letter-spacing: 4px; margin-bottom: -10px; text-align: center; font-family: SparkGauge, &#39;Arial Narrow&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 24px; text-transform: uppercase; font-weight: 100; color: #ffffff;">stay in touch with us</p></div></div><div class="hs_email hs-email hs-fieldtype-text field hs-form-field" data-reactid=".hbspt-forms-0.1:$2"><label id="label-email-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" class="" placeholder="Enter your " for="email-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" data-reactid=".hbspt-forms-0.1:$2.0"><span data-reactid=".hbspt-forms-0.1:$2.0.0"></span></label><legend class="hs-field-desc" style="display:none;" data-reactid=".hbspt-forms-0.1:$2.1"></legend><div class="input" data-reactid=".hbspt-forms-0.1:$2.$email"><input id="email-1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" class="hs-input" type="email" name="email" placeholder="Email address" value="" autocomplete="email" data-reactid=".hbspt-forms-0.1:$2.$email.0" inputmode="email"></div></div><div class="hs_main_newsletter_subscriber hs-main_newsletter_subscriber hs-fieldtype-booleancheckbox field hs-form-field" style="display:none;" data-reactid=".hbspt-forms-0.1:$3"><legend class="hs-field-desc" style="display:none;" data-reactid=".hbspt-forms-0.1:$3.1"></legend><div class="input" data-reactid=".hbspt-forms-0.1:$3.$main_newsletter_subscriber"><input name="main_newsletter_subscriber" class="hs-input" type="hidden" value="true" data-reactid=".hbspt-forms-0.1:$3.$main_newsletter_subscriber.0"></div></div><noscript data-reactid=".hbspt-forms-0.2"></noscript><div class="hs_submit hs-submit" data-reactid=".hbspt-forms-0.5"><div class="hs-field-desc" style="display:none;" data-reactid=".hbspt-forms-0.5.0"></div><div class="actions" data-reactid=".hbspt-forms-0.5.1"><input type="submit" value="SUBMIT" class="hs-button primary large" data-reactid=".hbspt-forms-0.5.1.0"></div></div><noscript data-reactid=".hbspt-forms-0.6"></noscript><input name="hs_context" type="hidden" value="{&quot;rumScriptExecuteTime&quot;:980.7500000461005,&quot;rumServiceResponseTime&quot;:1649.3050000281073,&quot;rumFormRenderTime&quot;:4.955000011250377,&quot;rumTotalRenderTime&quot;:1656.8750000442378,&quot;rumTotalRequestTime&quot;:654.0149999782443,&quot;renderRawHtml&quot;:&quot;true&quot;,&quot;embedAtTimestamp&quot;:&quot;1620326676509&quot;,&quot;formDefinitionUpdatedAt&quot;:&quot;1582824185693&quot;,&quot;pageUrl&quot;:&quot;https://learn.sparkfun.com/tutorials/analog-vs-digital&quot;,&quot;pageTitle&quot;:&quot;Analog vs. Digital - learn.sparkfun.com&quot;,&quot;source&quot;:&quot;FormsNext-static&quot;,&quot;timestamp&quot;:1620326676509,&quot;userAgent&quot;:&quot;Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36&quot;,&quot;referrer&quot;:&quot;https://moodle.oulu.fi/&quot;,&quot;originalEmbedContext&quot;:{&quot;portalId&quot;:&quot;2224003&quot;,&quot;formId&quot;:&quot;1f5a7872-dd7a-4e36-99fe-cafe431ba0b2&quot;,&quot;target&quot;:&quot;#hbspt-form-1620326675881-5787626274&quot;},&quot;boolCheckBoxFields&quot;:&quot;main_newsletter_subscriber&quot;,&quot;formTarget&quot;:&quot;#hbspt-form-1620326675881-5787626274&quot;,&quot;correlationId&quot;:&quot;250052a3-c546-4656-915e-f8d70610d28c&quot;,&quot;useRecaptchaEnterprise&quot;:true}" data-reactid=".hbspt-forms-0.7"><iframe name="target_iframe_1f5a7872-dd7a-4e36-99fe-cafe431ba0b2" style="display:none;" data-reactid=".hbspt-forms-0.8" src="./il_files/saved_resource(1).html"></iframe></form></div>
        </div>
        <p>Weekly product releases, special offers, and more.</p>
      </div>
    </div><!-- end .row -->
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12">
        <ul class="spew">
          <li><a href="https://www.youtube.com/sparkfun" target="_blank" class="sfe-icon-youtube"><span class="visuallyhidden">YouTube</span></a></li>
          <li><a href="https://www.instagram.com/sparkfun/" target="_blank" class="sfe-icon-instagram"><span class="visuallyhidden">Instagram</span></a></li>
          <li><a href="https://www.github.com/sparkfun" target="_blank" class="sfe-icon-github"><span class="visuallyhidden">GitHub</span></a></li>
          <li><a href="https://www.facebook.com/SparkFun" target="_blank" class="sfe-icon-facebook"><span class="visuallyhidden">Facebook</span></a></li>
          <li><a href="https://twitter.com/sparkfun" target="_blank" class="sfe-icon-twitter"><span class="visuallyhidden">Twitter</span></a></li>
          <li><a href="https://www.sparkfun.com/feeds" class="sfe-icon-feed"><span class="visuallyhidden">RSS</span></a></li>
        </ul>
      </div>
    </div>
  </div><!-- end .container -->
</div><!-- end .social -->

<div class="container">

    <div class="row">

    <div class="subfooter">
      <div class="col-md-12 col-xs-12">

        <div class="row">

          <div class="col-md-3 col-sm-6 col-xs-6">
          <h3>ABOUT SPARKFUN</h3>
            <ul>
              <li><a href="https://www.sparkfun.com/about_sparkfun">Read Our Story</a></li>
              <li><a href="https://www.sparkfun.com/coverage">Press &amp; Media</a></li>
              <li><a href="https://www.sparkfun.com/success">Success with SparkFun</a></li>
              <li><a href="http://www.sparkfuneducation.com/" target="_blank">SparkFun Education <span class="glyphicon glyphicon-new-window"></span></a></li>
              <li><a href="https://www.sparkfun.com/jobs">Job Openings</a></li>
            </ul>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-6">
          <h3>PARTNER WITH US</h3>
            <ul>
              <li><a href="https://www.sparkfun.com/partner_with_us">See Our Partners</a></li>
              <li><a href="https://www.sparkfun.com/become_a_distributor">Become a Distributor/Reseller</a></li>
              <li><a href="https://www.sparkfun.com/volume_sales">Receive Volume Discounts</a></li>
              <li><a href="https://www.sparkfun.com/services">Explore Services</a></li>
              <li><a href="https://www.sparkfun.com/community_outreach">Apply for a Hardware Donation</a></li>
            </ul>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-6">
          <h3>SUPPORT</h3>
            <ul>
              <li><a href="https://www.sparkfun.com/support">Customer Support</a>              </li><li><a href="https://www.sparkfun.com/support#PurchaseOrders">Purchase Orders &amp; Payment Terms</a></li>
              <li><a href="https://www.sparkfun.com/technical_assistance">Technical Assistance</a></li>
              <li><a href="https://www.sparkfun.com/faq">FAQs</a></li>
              <li><a href="https://www.sparkfun.com/support">Contact Us</a></li>
            </ul>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-6">
            <h3>SITE INFORMATION</h3>
            <ul>
              <li><a href="https://www.sparkfun.com/terms">Terms of Service</a></li>
              <li><a href="https://www.sparkfun.com/privacy">Privacy Policy</a></li>
              <li><a href="https://www.sparkfun.com/accessibility">Accessibility Statement</a></li>
              <li><a href="https://www.sparkfun.com/compliance">Compliance</a></li>
              <li><a href="https://www.sparkfun.com/sitemap">Site Map</a></li>
            </ul>
          </div>

        </div><!-- end .row -->
      </div><!-- end left column .col-sm-6 -->
    </div><!-- end .subfooter -->

  </div><!-- end .row -->
  
  <ul class="copyleft">
    <li>SparkFun Electronics <a href="https://www.sparkfun.com/news/300">®</a></li>
    <li><a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=6333+Dry+Creek+Parkway,+Niwot,+CO+80503"><strong>6333 Dry Creek Parkway, Niwot, Colorado 80503</strong></a></li>
    <li class="desktop-toggle">
              <a href="https://www.sparkfun.com/account/mobile_toggle?redirect=%2Flearn%2Ftutorials%2Fanalog-vs-digital">Desktop Site</a>          </li>
  </ul>

</div><!-- end .container -->

</footer>

    <div class="nav-account">
  <ul class="nav nav-tabs">
    <li class="visible-xs">
      <a class="nav-toggle-account back" href="https://learn.sparkfun.com/tutorials/analog-vs-digital#">Your Account</a>
    </li>
          <li class="">
        <a href="https://www.sparkfun.com/account/login?redirect=%2Flearn%2Ftutorials%2Fanalog-vs-digital" data-toggle="modal" data-target="#login_modal" data-remote="false">Log In</a>
      </li>
          <li class="">
        <a href="https://www.sparkfun.com/account/make">Register</a>
      </li>
      </ul>
</div>

      </div><!-- end .wrapper-inner -->
    </div><!-- end .wrapper -->

    <div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-hidden="true" data-remote-content="https://learn.sparkfun.com/index/login_modal_dialog?redirect=%2Flearn%2Ftutorials%2Fanalog-vs-digital">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">Log In</h4>
        <p class="modal-header-msg"></p>
      </div>
      <div class="modal-body"></div>
    </div>
  </div>
</div>

    
    <script type="text/javascript">
      var SFECONFIG = {
        dnt: true,
        http_server: 'http://learn.sparkfun.com',
        https_server: 'https://learn.sparkfun.com',
        http_static: 'https://cdn.sparkfun.com',
        learn_server: 'https://learn.sparkfun.com',
        commerce_server: 'https://www.sparkfun.com',
        base_url: '/',
        url: '/',
        controller: 'tutorials',
        action: 'view',
        entity_id: '',
        auth: false,
        sparkrev: '1620251631',
        search_key: 'xY6qr5Ui3V2UMA762D9Z'      };
    </script>
          <script src="./il_files/jquery.min.js.download"></script>
      <script src="./il_files/jquery-ui.min.js.download"></script>
      <script src="./il_files/learn-built.min.js.download"></script>
    
    <script>
      $('#learn').learn();
      $('#learn').sfeutil();
      $.shared('domready');
    </script><ul id="ui-id-1" tabindex="0" class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front" style="display: none;"></ul><div role="status" aria-live="assertive" aria-relevant="additions" class="ui-helper-hidden-accessible"></div>
                            <script src="./il_files/tutorials-built.min.js.download"></script>
                        

</body></html>
/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
		
	config.allowedContent         = true;
	// CKEDITOR.disableAutoInline = true;
	config.removePlugins          = 'pastefromword';     
	config.forcePasteAsPlainText  = true;
	config.scayt_autoStartup      = true;

	var exPluginsDefault		  = 'sourcedialog';
	var exPluginsAutoEmbed		  = 'dialogui,dialog,lineutils,widget,notification,notificationaggregator,clipboard,autolink,undo,embedbase,embed,autoembed';
	var exPluginsLoremIpsum 	  = 'panel,floatpanel,richcombo,loremipsum';
	var exPluginsCKAwesome		  = 'ckawesome';
	var exPluginsIndependent	  = 'emojione,autogrow,autosave,symbol,simplebutton,brclear,texttransform,imageresizerowandcolumn,image2';
	
	config.extraPlugins 		  = exPluginsDefault + ','+ exPluginsAutoEmbed +','+exPluginsCKAwesome + ',' +exPluginsLoremIpsum + ',' +exPluginsIndependent;


	config.fontawesomePath 		  = '//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css';
	
	config.embed_provider 		  = '//ckeditor.iframe.ly/api/oembed?url={url}&callback={callback}'
	
	config.contentsCss 			 = [ '../cms/ckeditor/contents.css'];

	config.skin 				  = 'bootstrapck';
	
	config.toolbar                = 'Standard';
	config.toolbar_Standard       = [
			['Sourcedialog'],
			['SpellChecker', 'Scayt'],
			['Undo','Redo','-','SelectAll','RemoveFormat'],
			['Link','Unlink','Anchor'],
			['Image','Table','SpecialChar'],
			['Bold','Italic','Strike','-','Subscript','Superscript'],
			['TransformTextToUppercase','TransformTextToLowercase','TransformTextCapitalize','TransformTextSwitcher'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','-','brclear'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['Format','FontSize'],
			['TextColor'],
			['AutoEmbed','AutoLink','Embed','simplebutton','AutoGrow','AutoSave'],
			['Loremipsum','ckawesome','Emojione','Symbol']
		
		];
		
		
	config.toolbar 				 = 'ToolbarInline';

    config.toolbar_ToolbarInline = [
	    	['Sourcedialog'],
			['SpellChecker', 'Scayt'],
			['Undo','Redo'],
			['Link','Unlink','Anchor'],
			['Image','Table','SpecialChar'],
			['Bold','Italic','Strike','-','Subscript','Superscript'],
			['TransformTextToUppercase','TransformTextToLowercase','TransformTextCapitalize','TransformTextSwitcher'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','-','brclear'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['Format','FontSize'],
			['AutoEmbed','AutoLink','Embed','simplebutton','AutoGrow','AutoSave'],
			['Loremipsum','ckawesome','Emojione','Symbol']
	    ];

	config.toolbar 				= 'Mini';

	config.toolbar_Mini 		= [
			['Sourcedialog'],
			[ 'SpellChecker', 'Scayt'],
			['Undo','Redo','-','SelectAll','RemoveFormat'],
			['Link','Unlink'],
			['Bold','Italic']	
			
		];

	config.toolbar 				= 'Basic';

	config.toolbar_Basic 		= [
	        ['Sourcedialog'],
			['Undo','Redo','-','SelectAll','RemoveFormat'],
			['Bold','Italic']

		];

	config.toolbar 				= 'MyToolbar';

    config.toolbar_MyToolbar 	= [
			['Sourcedialog'],
			['SpellChecker', 'Scayt'],
			['Undo','Redo','-','SelectAll','RemoveFormat'],
			['Link','Unlink','Anchor'],
			['Image','Table','SpecialChar'],
			['Bold','Italic','Strike','-','Subscript','Superscript'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['Format','FontSize'],
			['tags'],
			['AutoEmbed','AutoLink','Embed','simplebutton','AutoGrow','AutoSave'],
			['Loremipsum','ckawesome','Emojione','Symbol']
		];


	config.toolbar 				= 'sitecredits';

    config.toolbar_sitecredits 	= [
	        ['Undo','Redo'],
			['Link','Unlink'],
			['SpecialChar'],
			['Bold','Italic','Strike','-','Subscript','Superscript']
	    ];

	config.toolbar 				= 'Emails';

    config.toolbar_Emails 		= [
	        ['Undo','Redo'],
			['Link','Unlink'],
			['SpecialChar'],
			['Bold','Italic','Strike','-','Subscript','Superscript']
	    ];
    
    config.toolbar 				= 'Justimages';

    config.toolbar_Justimages 	= [
	        ['Image']
	    ];



    if(typeof jsVars.ckTags != 'undefined' && jsVars.ckTags.length > 0)
    {
    	var tlbLength = config.toolbar_ToolbarInline.length;

    	config.toolbar_ToolbarInline[tlbLength - 1].push('tags');

    }	
};
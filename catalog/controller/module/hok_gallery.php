<?php
class ControllerModuleHokGallery extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/gallery/gallery.css');
		$this->document->addStyle('catalog/view/javascript/jquery/gallery/lightgallery.css');
		$this->document->addScript('catalog/view/javascript/jquery/gallery/gallery.js');
		$this->document->addScript('catalog/view/javascript/jquery/gallery/lightgallery.js');
		$this->document->addScript('catalog/view/javascript/jquery/gallery/isotope.min.js');
		$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
		$this->document->addScript('catalog/view/javascript/jquery/gallery/imageloaded.js');

		$data['button_background']= $setting['button_background'];
		$data['button_color']= $setting['button_color'];
		$data['cover_background']= $setting['cover_background'];
		$data['caption']= $setting['caption'];
		
		$data['banners'] = array();
		
		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']),
					'popup' => $this->model_tool_image->resize($result['image'], $setting['popup_width'], $setting['popup_height'])
				);
			}
		}

		$data['module'] = $module++;
		
		if (version_compare(VERSION, '2.2.0.0', '<') == true) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/hok_gallery.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/hok_gallery.tpl', $data);
			} else {
				return $this->load->view('default/template/module/hok_gallery.tpl', $data);
			}
		} else {
			return $this->load->view('module/hok_gallery', $data);
		}
	}
}
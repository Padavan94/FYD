<?php
class ControllerModuleFeatured extends Controller {
	public function index($setting) {
        //var_dump($setting);die;
		$this->load->language('module/featured');

		$data['lang'] = $this->language->get('code');
		
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_tax'] = $this->language->get('text_tax');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
		$data['cosyone_percentage_sale_badge'] = $this->config->get('cosyone_percentage_sale_badge');
		
		$cosyone_quicklook = $this->config->get('cosyone_text_ql');
		
		if(empty($cosyone_quicklook[$this->config->get('config_language_id')])) {
			$data['cosyone_text_ql'] = false;
		} else if (isset($cosyone_quicklook[$this->config->get('config_language_id')])) {
			$data['cosyone_text_ql'] = html_entity_decode($cosyone_quicklook[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$data['cosyone_brand'] = $this->config->get('cosyone_brand');
        
        $data['grid'] = 'grid3';
        
		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}

                    if ((float)$product_info['special']) {
                    $sales_percantage = ((($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))-($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax'))))/(($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))/100));
                    } else {
                    $sales_percantage = false;
                    }                    
                    
					$data['products'][] = array(
                        'product_id'  => $product_info['product_id'],
                        'thumb'       => $image,
                        'name'        => $product_info['name'],
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
                        'quickview'   => $this->url->link('product/quickview', 'product_id=' . $product_info['product_id'], '', true),
                        'sales_percantage' => number_format($sales_percantage, 0, ',', '.'),
                        'brand_name' 	 => $product_info['manufacturer']
					);
				}
			}
		}

		if ($data['products']) {
			return $this->load->view('module/featured', $data);
		}
	}
}
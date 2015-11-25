
<?php if ($products) {?>
<div class="box bestsellers">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
	<div class="box-product">
		<ul class="row">
		  <?php $i=0; foreach ($products as $product) { $i++ ?>
		  <?php 
			   $perLine = 4;
			   $spanLine = 3;
			   $last_line = "";
							$total = count($products);
							$totModule = $total%$perLine;
							if ($totModule == 0)  { $totModule = $perLine;}
							if ( $i > $total - $totModule) { $last_line = " last_line";}
							if ($i%$perLine==1) {
								$a='first-in-line';
							}
							elseif ($i%$perLine==0) {
								$a='last-in-line';
							}
							else {
								$a='';
							}
						?>
			<li class="<?php echo $a. $last_line ;?> col-sm-<?php echo $spanLine ;?>">
				<div class="padding">
					<!-- Product image -->
					<div class="product_image image2">
						<a href="<?php echo $product['href']; ?>"><?php if ($product['thumb']) { ?><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme439/image/no-image.png" alt="" /><?php } ?></a>
					</div>
					<div class="inner">
						<div class="f-left">
							<!-- Product price -->
							<?php if ($product['price']) { ?>
							<div class="product_price price">
								<?php if (!$product['special']) { ?>
								<span class="price-old"></span><br>
								<span class="price-new"><?php echo $product['price']; ?></span>
								<?php } else { ?>
								<span class="price-old"><?php echo $product['price']; ?></span><br>
								<span class="price-new"><?php echo $product['special']; ?></span>
								<?php } ?>
							</div>
							<?php } ?>
							<!-- product name -->
							<div class="product_name name maxheight-feat"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							<!-- Product description -->
							<?php if ($product['description']) {?>
							<div class="product_description description"><?php echo mb_substr($product['description1'],0,96,'UTF-8').'...';?></div>
							<?php } ?>						
						</div>
						<!-- Product buttons -->
						<div class="product_button cart-button">
						<div class="cart">
							<a title="<?php echo $button_cart; ?>" data-id="<?php echo $product['product_id']; ?>;" class="button addToCart"><span>
								<span><?php echo $button_cart; ?></span>
								<i class="fa fa-shopping-cart"></i>
							</span></a>
						</div>
						<span class="clear"></span>
					</div>
						<div class="clear"></div>
						<!-- Product rating -->
						<div class="rating">
							<?php if ($product['rating']) { ?>
								<img height="13" src="catalog/view/theme/theme439/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
							<?php } ?>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			  </li>
		  <?php } ?>
		</ul>
	</div>
  </div>
</div>
<?php }?>
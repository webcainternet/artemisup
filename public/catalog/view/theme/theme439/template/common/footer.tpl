<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<!-- Footer -->
<footer>
	<div class="container__footer">
	<table class="table">
		<thead>
			<tr>
				<?php if ($informations) { ?><td><?php echo $text_information; ?></td><?php } ?>
				<td><?php echo $text_service; ?></td>
				<td><?php echo $text_extra; ?></td>
				<td><?php echo $text_account; ?></td>
				<td><?php echo $text_follow; ?></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<?php if ($informations) { ?><td>
					<ul>
						<?php foreach ($informations as $information) { ?>
						<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
						<?php } ?>
					</ul>
				</td><?php } ?>
				<td>
					<ul>
						<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
						<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
						<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
					</ul>
				</td>
				<td>
					<ul>
						<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
						<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
						<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
						<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
					</ul>
				</td>
				<td>
					<ul>
						<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
						<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
						<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
						<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
					</ul>
				</td>
				<td>
					<div class="foot-phone">
							<div class="tx__footer"><?php echo $tx_telephone; ?></div>
							<div><?php echo $telephone; ?></div>
						</div>
					<ul class="social">						
						<li><a class="tooltip-1" title="<?php echo $text_fb; ?>" href="http://facebook.com"><i class="fa fa-facebook-square"></i></a></li>
						<li><a class="tooltip-1" title="<?php echo $text_twi; ?>" href="http://twitter.com"><i class="fa fa-twitter-square"></i></a></li>
						<li><a class="tooltip-1" title="<?php echo $text_rss; ?>" href="#"><i class="fa fa-rss-square"></i></a></li>
					</ul>
				</td>
			</tr>
		</tbody>		
	</table>
	</div>
	<!-- copyright -->
	<div id="copyright">						
		<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->				
	</div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>
</body></html>
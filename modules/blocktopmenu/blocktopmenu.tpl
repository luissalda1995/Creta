{if $MENU != ''}
	<!-- Menu -->
	{*
	<div id="block_top_menu" class="sf-contener clearfix col-lg-12">
		<div class="cat-title" id="burger1">{l s="Categories" mod="blocktopmenu"}</div>
		<ul class="sf-menu clearfix menu-content" id="blocktopmenu_hidden">
			{$MENU}
			{if $MENU_SEARCH}
				<li class="sf-search noBack" style="float:right">
					<form id="searchbox" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="get">
						<p>
							<input type="hidden" name="controller" value="search" />
							<input type="hidden" value="position" name="orderby"/>
							<input type="hidden" value="desc" name="orderway"/>
							<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'html':'UTF-8'}{/if}" />
						</p>
					</form>
				</li>
			{/if}
		</ul>
	</div>
	<!--/ Menu -->
	*}
	<div class="my_menu_open">
		<span class="header_hide">Productos</span><i class="blockcategories_icon"></i>
	</div>
	<div class="my_menu">
		{if Module::isInstalled('blockcategories')}
			<div class="home-categories-left col-sm-12">
				{Module::getInstanceByName('blockcategories')->hookLeftColumn([])}
			</div>
		{/if}

	</div>
{/if}

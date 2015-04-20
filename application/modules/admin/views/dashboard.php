<div class="page-content-wrapper">
	<div class="page-content">
		<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

		<!-- /.modal -->
		<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
		<!-- BEGIN STYLE CUSTOMIZER -->

		<!-- END STYLE CUSTOMIZER -->
		<!-- BEGIN PAGE HEADER-->
		<div class="row">
		    <div class="col-md-12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
			Dashboard <small><a href="<?=$this->config->item('developer_url');?>" class="logoHandler">
				<?=$this->config->item('developer_name');?>
			</a></small>				
			</h3>
			<ul class="page-breadcrumb breadcrumb">
			    <li>
				<i class="fa fa-home"></i>
				<a href="<?=base_url(ADMIN.'admin/dashboard/index')?>">
					Home
				</a>
				<i class="fa fa-angle-right"></i>
			    </li>
			    <li>
				<a href="#">
					Dashboard
				</a>
			    </li>
			</ul>
			<!-- END PAGE TITLE & BREADCRUMB-->
		    </div>
		</div>
		<!-- END PAGE HEADER-->
		<!-- BEGIN DASHBOARD STATS -->
		<div class="row">
		    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="dashboard-stat green">
			    <div class="visual"><i class="fa fa-group"></i></div>
			    <div class="details">
				<div class="number"><?=$tusers;?></div>
				<div class="desc">Total User</div>
			    </div>
			    <a class="more" href="<?=base_url(ADMIN.'user/index');?>">
				View more <i class="m-icon-swapright m-icon-white"></i>
			    </a>
			</div>
		    </div>
		    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="dashboard-stat yellow">
			    <div class="visual"><i class="fa fa-user"></i></div>
			    <div class="details">
				<div class="number"><?=$tparticipant;?></div>
				<div class="desc">Total Participant</div>
			    </div>
			    <a class="more" href="<?=base_url(ADMIN.'participant/index');?>">
				View more <i class="m-icon-swapright m-icon-white"></i>
			    </a>
			</div>
		    </div>
		    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="dashboard-stat blue">
			    <div class="visual"><i class="fa fa-camera"></i></div>
			    <div class="details">
				<div class="number"><?=$timages;?></div>
				<div class="desc">Total Image</div>
			    </div>
			    <a class="more" href="<?=base_url(ADMIN.'gallery/index');?>">
				View more <i class="m-icon-swapright m-icon-white"></i>
			    </a>
			</div>
		    </div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="dashboard-stat red">
			    <div class="visual"><i class="fa fa-camera-retro"></i></div>
			    <div class="details">
				<div class="number"><?=$ta_images;?></div>
				<div class="desc">Total Unpublished Image</div>
			    </div>
			    <a class="more" href="<?=base_url(ADMIN.'gallery/index');?>">
				View more <i class="m-icon-swapright m-icon-white"></i>
			    </a>
			</div>
		    </div>
		</div>
		<!-- END DASHBOARD STATS -->
		<div class="clearfix">
		</div>

		<div class="clearfix">
		</div>
		<div class="row ">
		    
			<div class="col-md-12 col-sm-12">
				<div class="portlet box green">
					<div class="portlet-title">
					<div class="caption">
						<i class="fa fa-user"></i>Login Activities
					</div>
					</div>
					<div class="portlet-body">
					<div id="login_statistics_loading">
						<img src="<?php echo base_url();?>assets/admin/img/loading.gif" alt="loading"/>
					</div>
					<div id="login_statistics_content" class="display-none">
						<div id="login_statistics" class="chart"></div>
					</div>
					</div>
				</div>
			</div>	
			
			<div class="col-md-12 col-sm-12">
				<div class="portlet box red">
					<div class="portlet-title">
					<div class="caption">
						<i class="fa fa-user"></i>Participant Join Date Activities
					</div>
					</div>
					<div class="portlet-body">
					<form class="form-horizontal" name="form-report-range" method="POST">
					<fieldset>
						<div class="control-group">
							<div class="controls">
								<div class="input-prepend input-group">
									<span class="add-on input-group-addon">
									<i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
									</span>
									<input id="reportrange" class="form-control" type="text" value="" name="reportrange" style="width: 200px">
									<button type="submit" class="btn btn-default">Get</button>
								</div>
							</div>
						</div>
					</fieldset>
					</form>
					<div id="join_statistics_loading">
						<img src="<?php echo base_url();?>assets/admin/img/loading.gif" alt="loading"/>
					</div>
					<div id="join_statistics_content" class="display-none">
						<div id="join_statistics" class="chart"></div>
					</div>
					</div>
				</div>
			</div>	
		
		    <div class="col-md-12 col-sm-12 hidden">
			<div class="portlet box blue">
			    <div class="portlet-title">
				<div class="caption">
				    <i class="fa fa-bell-o"></i>Vote Activities
				</div>
			    </div>
			    <div class="portlet-body">
				<div class="scroller" style="max-height: 300px;" data-always-visible="1" data-rail-visible="0">
				    <ul class="feeds">
					<li>
					    <div class="col1">
						<div class="cont">
						    <div class="cont-col1">
							<div class="label label-sm label-info">
							    <i class="fa fa-check"></i>
							</div>
						    </div>
						    <div class="cont-col2">
							<div class="desc">
							    You have 4 pending tasks.
							</div>
						    </div>
						</div>
					    </div>
					    <div class="col2">
						<div class="date">
							Just now
						</div>
					    </div>
					</li>
				    </ul>
				</div>
				<div class="scroller-footer">
				    <div class="pull-right">
					<a href="#">
					    See All Records <i class="m-icon-swapright m-icon-gray"></i>
					</a>
					 &nbsp;
				    </div>
				</div>
			    </div>
			</div>
		    </div>
		</div>
		<div class="clearfix">
		</div>
	</div>
</div>
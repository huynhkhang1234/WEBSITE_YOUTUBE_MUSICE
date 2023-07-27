<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Video</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/fontawesome-free/css/all.min.css'/>">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
  <!-- iCheck -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/jqvmap/jqvmap.min.css'/>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/dist/css/adminlte.min.css'/>">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/daterangepicker/daterangepicker.css'/>">
  <!-- summernote -->
  <link rel="stylesheet" href="<c:url value='/templates/admin/plugins/summernote/summernote-bs4.min.css'/>">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="<c:url value='/templates/admin/dist/img/AdminLTELogo.png'/>" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="<c:url value='/templates/admin/dist/img/AdminLTELogo.png'/>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Quản lí Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<c:url value='/templates/admin/dist/img/user2-160x160.jpg'/>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
              <a href="#" class="d-block">${sessionScope.userNow.getUserName()}</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="<c:url value='/view/admin'/>" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Trang chủ
              </p>
            </a>
          </li>
          <!-- Video -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Video
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<c:url value='/admin/video?action=view'/>" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thông tin video</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<c:url value='/admin/video?action=add'/>" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Chỉnh sửa cập nhật video</p>
                </a>
              </li>
            </ul>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->   
    <!-- /.content-header -->
<br>
    <!-- Main content -->
    <section class="content">
	<div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Cập nhật video</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="title">Tên video</label>
                <input placeholder="Vui lòng chọn thông tin cần chỉnh sửa"  type="text" id="title" value="${video!= null ? video.title : '' }" class="form-control">
              </div>
              <div class="form-group">
                <label for="href">Đường dẫn</label>
                <input placeholder="Vui lòng chọn thông tin cần chỉnh sửa" type="text" id="href" value="${video!= null ? video.href : '' }" class="form-control">
              </div>
              <div class="form-group">
				<div class="row">
					<div class="col-9">
						<div class="row">
							<div class="col-12 form-group">
								<label for="description">Mô tả </label>
								<textarea placeholder="Vui lòng chọn thông tin cần chỉnh sửa" id="description"  class="form-control" rows="4">${video!= null ? video.description : '' }</textarea>
							</div>
							<div class="col-12 form-group">
								<label for="poster">Hình ảnh</label>
								<input placeholder="Vui lòng chọn thông tin cần chỉnh sửa" type="text" id="poster" value="${video!= null ? video.poster : '' }" class="form-control">
								<input type="hidden" id="isEdit" value="${isEdit}" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-3">
						<label for="inputProjectLeader">Ảnh đại diện </label>
						<div style="width: 100%; height: 200px; border: 1px dotted gray">
							<img alt="Vui lòng chọn ảnh cần chỉnh sửa" id="imgPreview" src="${video!= null ? video.poster : '' }" height="100%" width="100%" />
							
						</div>
					</div>
				</div>
                
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      	<div class="row" style="margin: auto auto;">
			<button type="button" id="resetBtn" class="btn bg-gradient-info btn-md" style="margin-right: 15px;">Mặc định</button>
			<button type="button" id="submitBtn" class="btn bg-gradient-success btn-md">Cập nhật</button>
		</div>
		<center><h5 id="message"></h5></center>
	  </div>
	  </div>
    </section>
	<br/><br/>
    <!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
 

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<c:url value='/templates/admin/plugins/jquery/jquery.min.js'/>"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<c:url value='/templates/admin/plugins/jquery-ui/jquery-ui.min.js'/>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<c:url value='/templates/admin/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<!-- ChartJS -->
<script src="<c:url value='/templates/admin/plugins/chart.js/Chart.min.js'/>"></script>
<!-- Sparkline -->
<script src="<c:url value='/templates/admin/plugins/sparklines/sparkline.js'/>"></script>
<!-- JQVMap -->
<script src="<c:url value='/templates/admin/plugins/jqvmap/jquery.vmap.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/jqvmap/maps/jquery.vmap.usa.js'/>"></script>
<!-- jQuery Knob Chart -->
<script src="<c:url value='/templates/admin/plugins/jquery-knob/jquery.knob.min.js'/>"></script>
<!-- daterangepicker -->
<script src="<c:url value='/templates/admin/plugins/moment/moment.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/daterangepicker/daterangepicker.js'/>"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<c:url value='/templates/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'/>"></script>
<!-- Summernote -->
<script src="<c:url value='/templates/admin/plugins/summernote/summernote-bs4.min.js'/>"></script>
<!-- overlayScrollbars -->
<script src="<c:url value='/templates/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js'/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value='/templates/admin/dist/js/adminlte.js'/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value='/templates/admin/dist/js/demo.js'/>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<c:url value='/templates/admin/dist/js/pages/dashboard.js'/>"></script>
<!-- DataTables  & Plugins -->
<script src="<c:url value='/templates/admin/plugins/datatables/jquery.dataTables.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/jszip/jszip.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/pdfmake/pdfmake.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/pdfmake/vfs_fonts.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.html5.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.print.min.js'/>"></script>
<script src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.colVis.min.js'/>"></script>
<!-- Page specific script -->


<script>
var titleOrigin, hrefOrigin, descriptionOrigin, posterOrigin;

$(document).ready(function() {
	titleOrigin = 		$('#title').val();
	hrefOrigin =		$('#href').val();
	descriptionOrigin = $('#description').val();
	posterOrigin =		$('#poster').val();
});

$('#resetBtn').click(function(){
	
	$('#title').val(titleOrigin);
	$('#href').val(hrefOrigin);
	$('#description').val(descriptionOrigin);
	$('#poster').val(posterOrigin);
	if(posterOrigin.length >0){
		$('#imgPreview').attr('src', posterOrigin);
	}
	
});
$('#submitBtn').click(function(){
	$('#message').text('');
	
	var isEdit = $('#isEdit').val();
	var url;
	
	if(isEdit=='true'){
		alert('true');
		url: '/KhangHBPC04012_Assignment_Java4_Dynamic/admin/video?action=edit&href='+hrefOrigin;
	}else{
		alert('false');
		url: '/KhangHBPC04012_Assignment_Java4_Dynamic/admin/video?action=add';
	}
	
	var formData={
		'hrefOrigin': hrefOrigin,
		'title': $('#title').val(),
		'newHref': $('#href').val(),
		'description': $('#description').val(),
		'poster': $('#poster').val(),
	};
		
	$.ajax({
		url: url,
		type: 'POST',
		data: formData
	}).then(function() {
		window.location.href= "http://localhost:8080/KhangHBPC04012_Assignment_Java4_Dynamic/admin/video?action=view";
	}).fail(function() {
		$('#message').text('Truy vấn dữ liệu thất bại');
	})
});

$('#poster').change(function() {
	var newSrc = $('#poster').val();
	$('#imgPreview').attr('src', newSrc);
});

</script>
</body>
</html>
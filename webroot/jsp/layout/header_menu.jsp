<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel='stylesheet' type='text/css' href='css/reset.css' /><!--
        <link rel='stylesheet' type='text/css' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/start/jquery-ui.css' />
        -->
  <link rel='stylesheet' type='text/css' href=
  'css/south-street/jquery-ui-1.8.9.custom.css' />
  <link rel='stylesheet' type='text/css' href='css/jquery.weekcalendar.css' />
  <link rel='stylesheet' type='text/css' href='css/calendar.css' />
    <link rel='stylesheet' type='text/css' href='css/jquery.jgrowl.css' />
    <link rel="stylesheet" type='text/css' href="css/jquery.fileupload-ui.css" />
    
  <script type='text/javascript' src='js/lib/jquery-1.4.4.min.js'>
</script><!--
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js'></script>
    -->

  <script type='text/javascript' src='js/lib/jquery-ui-1.8.9.custom.min.js'>
</script>
  <script type='text/javascript' src='js/jquery.weekcalendar.js'>
</script>
  <script type='text/javascript' src='js/jquery.fileupload.js'>
</script>
  <script type='text/javascript' src='js/jquery.fileupload-ui.js'>
</script>
      <script>
      $().ready(function() {
      <%
      	//code for menu tabs activation
      	String dPageDefault = "planner";
 		String dPage = request.getParameter("sect");
 		dPage = (dPage == null)? dPageDefault  : dPage ;
		out.println("\n var section= \'" + dPage + "\';") ;
      %>
      var text_tab = $("#"+section).children("a").hide().text();
      $("#"+section).addClass("active").prepend("<strong>" + text_tab + "</strong>");
      });
      </script>
  <script type='text/javascript' src='js/ftod.js'>
</script>
  <script type='text/javascript' src='js/jquery.validate.min.js'>
</script>
  <script type='text/javascript' src='js/main.js'>
</script>
  <script type='text/javascript' src='js/jquery.jgrowl_minimized.js'>
</script>
  <script type='text/javascript' src='js/jquery.form.js'>
</script>
  <title>LOCANDA - Open Source Booking Tool</title><!-- (en) Add your meta data here -->
  <!-- (de) Fuegen Sie hier ihre Meta-Daten ein -->
  <link href="css/layout_sliding_door.css" rel="stylesheet" type="text/css" />
  <!--[if lte IE 7]>

<link href="css/patches/patch_sliding_door.css" rel="stylesheet" type="text/css" />

<![endif]-->
</head>

<body>
  <!-- skip link navigation -->

  <ul id="skiplinks">
    <li><a class="skip" href="#nav">Skip to navigation (Press Enter).</a></li>

    <li><a class="skip" href="#col3">Skip to main content (Press Enter).</a></li>
  </ul>
  
<s:url action="logout" var="url_logout"></s:url>
<s:url action="home" var="url_home"></s:url>
<s:url action="findAllRooms" var="url_findallroom"></s:url>

  <div class="page_margins">
    <div class="page">
      <div id="header" role="banner">
        <div id="topnav" role="contentinfo">
          <span><a href="<s:property value="url_logout"/>">Logout</a></span>
        </div>

        <h1>
        <span>&nbsp;</span><em>&nbsp;</em></h1><span>Polaris</span>
      </div><!-- begin: main navigation #nav -->
      <div id="nav" role="navigation">
        <div class="hlist">
          <ul>
            <li id="planner"><a href="<s:property value="url_home"/>?sect=planner">Planner</a></li>
            <li id="accomodation"><a href="#">Accomodation</a>
            <ul class="sub_menu ui-menu ui-widget ui-widget-content ui-corner-all">
    			<li class="ui-menu-item"><a href="<s:property value="url_findallroom"/>?sect=accomodation">ACCOMODATION</a></li>
    			<li class="ui-menu-item"><a href="extras.jsp?sect=accomodation">EXTRAS</a></li>
  			</ul>
            </li>
            <li id="guests"><a href="guests.jsp?sect=guests">Guests</a></li>
            <li id=reports><a href="#">Reports</a></li>
            <li id="settings"><a href="#">Settings</a>
                <ul class="sub_menu ui-menu ui-widget ui-widget-content ui-corner-all">
    			<li class="ui-menu-item"><a href="online.jsp?sect=settings">ONLINE BOOKINGS</a></li>
    			<li class="ui-menu-item"><a href="seasons.jsp?sect=settings">SEASONS</a></li>
    			<li class="ui-menu-item"><a href="emails.jsp?sect=settings">EMAILS</a></li>
    			<li class="ui-menu-item"><a href="details.jsp?sect=settings">YOUR DETAILS</a></li>
    			<li class="ui-menu-item"><a href="discount.jsp?sect=settings">DISCOUNT</a></li>
  			</ul>
            </li>         
            <li><a href="#">Help</a></li>
          </ul>
        </div>
      </div><!-- end: main navigation -->
      <!-- begin: main content area #main -->
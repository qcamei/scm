<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Gift Card Process</title>
<base href="${global_url}" />
<link href="${global_css_url}scm.css" rel="stylesheet" type="text/css" />
<link href="${global_css_url}table.css" rel="stylesheet" type="text/css" />

<link type="text/css"
	href="${global_js_url}jquery/themes/base/ui.all.css" rel="stylesheet" />

<script language="javascript" type="text/javascript"
	src="${global_js_url}jquery/jquery.js"></script>
<script language="javascript" type="text/javascript"
	src="${global_js_url}ajax.js"></script>
<script src="${global_js_url}table.js" type="text/javascript"></script>
<script
	src="${global_js_url}jquery/external/bgiframe/jquery.bgiframe.min.js"
	type="text/javascript"></script>
<link type="text/css"
	href="${global_js_url}jquery/themes/base/ui.all.css" rel="stylesheet" />
<script src="${global_js_url}jquery/ui/ui.core.js"
	type="text/javascript"></script>
<script src="${global_js_url}jquery/ui/ui.draggable.js"
	type="text/javascript"></script>
<script src="${global_js_url}jquery/ui/ui.resizable.js"
	type="text/javascript"></script>
<script src="${global_js_url}jquery/ui/ui.dialog.js"
	type="text/javascript"></script>
<script language="javascript" type="text/javascript"
	src="${global_js_url}newwindow.js"></script>
<script language="javascript" type="text/javascript"
	src="${global_js_url}util/util.js"></script>
<script language="JavaScript" type="text/javascript">
	$(document).ready(function() {
		$('tr:even >td').addClass('list_td2');
	});
</script>
</head>

<body class="content" style="background-image: none;">
	<div id="frame12" style="display: none;" class="hidlayer1">
		<iframe id="hidkuan" name="hidkuan" src="" width="668" height="425"
			frameborder="0" allowtransparency="true"></iframe>
	</div>

	<div class="scm">
		<div class="title_content">
			<div class="title_new">
				<a href="javascript:void(0);"
					onclick="toggleShowMorea('total_title');" id="total_titleItem"><img
					src="${global_url}images/arrow1.jpg" /> </a>&nbsp;Available Cards
			</div>
		</div>
		<div class="search_box" id="total_title">
			<div class="single_search">
				<div id="paramHiddenSources" style="display: block">
					<form action="">
						<table border="0" cellpadding="0" cellspacing="0"
							class="General_table">
							<tr>
								<th width="60">Card Number</th>
								<td><input name="filter_LIKES_cardNo" type="text"
									class="NFText" size="20"
									value="${param['filter_LIKES_cardNo']}" /></td>
								<th width="60">Purchase processer</th>
								<td width="100"><input name="filter_EQS_buyer" type="text"
									class="NFText" size="20" value="${param['filter_EQS_buyer']}" />
								</td>
								<td><input id="paramSearch" type="submit"
									name="paramSearch" value="Search" class="search_input" /></td>
							</tr>
						</table>
					</form>
				</div>

				<div id="paramHiddenCustomer" style="display: none;">
					<table border="0" cellpadding="0" cellspacing="0"
						class="General_table">
						<tr>
							<th>Notice Code</th>
							<td><input name="textfield2" type="text" class="NFText"
								size="15" />
							</td>
							<th>Name</th>
							<td><input name="textfield22" type="text" class="NFText"
								size="30" /></td>
							<td><input id="paramSearch" type="submit" name="paramSearch"
								value="Search" class="search_input" /></td>
						</tr>
					</table>
				</div>
				<div id="paramHiddenOrder" style="display: none;">
					<table border="0" cellpadding="0" cellspacing="0"
						class="General_table">
						<tr>
							<th>Order Type Code</th>
							<td><input name="textfield2" type="text" class="NFText"
								size="15" /></td>
							<th>Name</th>
							<td><input name="textfield223" type="text" class="NFText"
								size="30" /></td>
							<td><input id="paramSearch" type="submit" name="paramSearch"
								value="Search" class="search_input" />
							</td>
						</tr>
					</table>
				</div>

				<div id="paramHiddenPromotions" style="display: none;">
					<table border="0" cellpadding="0" cellspacing="0"
						class="General_table">
						<tr>
							<th>Promotion Code</th>
							<td><input name="textfield23" type="text" class="NFText"
								size="15" />
							</td>
							<th>Description</th>
							<td><input name="textfield22322" type="text" class="NFText"
								size="30" /></td>
							<td><input id="paramSearch2" type="submit"
								name="paramSearch2" value="Search" class="search_input" /> <a
								href="New_promotion.html" title="New Promotion"
								rel="gb_page_center[680,  400]"> <input type="submit"
									name="Submit2" value="New" class="search_input" /> </a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="input_box" id="table_usa">

			<table width="1010" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><div style="margin-right: 17px;">
							<table width="993" border="0" cellspacing="0" cellpadding="0"
								class="list_table">
								<tr>
									<th width="152">Card Number</th>
									<th width="209">Value</th>
									<th width="187">Purchase Date</th>
									<th>Purchase processer</th>
								</tr>

							</table>
						</div></td>
				</tr>
				<tr>
					<td>
						<div class="list_box">
							<table width="993" border="0" cellspacing="0" cellpadding="0"
								class="list_table2">
								<s:iterator value="page.result">
									<tr>
										<td width="152" align="center"><a
											href="javascript:void(0)"
											onclick="window.openiframe('customer/gift_card!input.action?id=${id}','664','330')">${cardNo
												}</a></td>
										<td width="209" align="center">${cardValue }</td>
										<td width="187" align="center"><s:date
												name="purchaseDate" format="yyyy-MM-dd" /></td>
										<td align="center">${purchasedName }  
 
										</td>
									</tr>
								</s:iterator>
							</table>
						</div>
					</td>
				</tr>

				<tr>
					<td>
						<div class="grayr">
							<jsp:include page="/common/db_pager.jsp">
								<jsp:param value="${ctx }/customer/gift_card.action"
									name="moduleURL" />
							</jsp:include>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="button_box">
			<a href="javascript:void(0)"
				onclick="window.openiframe('customer/gift_card!input.action','664','330')">
				<input type="button" name="Submit5" value="New" class="search_input" />
			</a>
		</div>
	</div>
</body>
</html>


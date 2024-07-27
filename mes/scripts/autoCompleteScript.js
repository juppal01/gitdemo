$( document ).ready(function() {	
	$('#partNumber').typeahead({
		source: function (query, process) {
			$.ajax({
				url: "autocompletePartNum.php",
				type: "POST",
				data: 'query='+query,
				dataType: 'JSON',
				async: true,
				success: function(data){
						   var resultList = data.map(function (item) {
						   //var link = { desc: item.desc, pnum: item.part_num, cust: item.cust};
						   var link = { desc: item.desc, pnum: item.part_num};
						   return JSON.stringify(link);					  
						 });
					return process(resultList);
				},
				error:function(data) {
				alert (data);
				}
			})
		},	
		afterSelect: function(link) {
			var item = JSON.parse(link);
			this.$element[0].value = item.pnum;
			$("#prodDesc").val(item.desc);
			//$("#customerName").val(item.cust);
		},
		matcher: function (obj) {
			var item = JSON.parse(obj);
			return item.pnum  //.toLowerCase().indexOf(this.query.toLowerCase())
		},	
		highlighter: function (link) {		
			var item = JSON.parse(link);		
			var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
			return item.pnum.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
				return '<strong>' + match + '</strong>'
			})
		}
/*		sorter: function (items) {          
		   var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
		   while (link = items.shift()) {
				var item = JSON.parse(link);
				if (!item.pnum.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
				else if (item.pnum.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
				else caseInsensitive.push(JSON.stringify(item));
			}
			return beginswith.concat(caseSensitive, caseInsensitive)
		},		
		updater: function (link) {
		   var item = JSON.parse(link);
		   $("#prodDesc").val(item.desc);
		    $("#partNumber").val(item.pnum);    
		}*/
	});	
	$('#customerName').typeahead({
		source: function (query, process) {
			$.ajax({
				url: "autocompleteCustName.php",
				type: "POST",
				data: 'query='+query,
				dataType: 'JSON',
				async: true,
				success: function(data){
						   var resultList = data.map(function (item) {
						   var link = { Cust_Name: item.Cust_Name, Cust_ID: item.Cust_ID, Cust_City: item.Cust_City};
						   return JSON.stringify(link);					  
						 });
					return process(resultList);
				},
				error:function(data) {
				alert (data);
				}
			})
		},	
		afterSelect: function(link) {
			var item = JSON.parse(link);
			this.$element[0].value = item.Cust_Name;
			$("#custID").val(item.Cust_ID);
			//$("#custCity").val(item.Cust_City);
		},
		matcher: function (obj) {
			var item = JSON.parse(obj);
			return item.Cust_Name  //.toLowerCase().indexOf(this.query.toLowerCase())
		},	
		highlighter: function (link) {		
			var item = JSON.parse(link);		
			var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
			return item.Cust_Name.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
				return '<strong>' + match + '</strong>'
			})
		}
	});		
	
});
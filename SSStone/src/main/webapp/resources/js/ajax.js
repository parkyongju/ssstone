console.log("ajax Module....");

var replyService = (function() {

	function add(r_content, callback, error) {
		console.log("add reply......");

		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(r_content),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}

			}
		})
	}

	function getList(param, callback, error) {
		var b_no = param.b_no;
		var page = param.page || 1;

		$.getJSON("/replies/pages/" + b_no + "/" + page + ".json",
				function(data) {
					if (callback) {
						// callback(data); // 댓글 목록만 가져오는경우
						callback(data.replyCnt, data.list); // 댓글 숫자와 목록을 가져온느
															// 경우
					}
				}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}

	function remove(r_no, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + r_no,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	function update(r_content, callback, error) {

		console.log("R_NO: " + r_content.r_no);

		$.ajax({
			type : 'put',
			url : '/replies/' + r_content.r_no,
			data : JSON.stringify(r_content),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	function get(r_no, callback, error) {
		$.get("/replies/" + r_no + ".json", function(result) {
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}

	function displayTime(timeValue) {

		var today = new Date();

		var gap = today.getTime() - timeValue;

		var dateObj = new Date(timeValue);
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {

			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();

			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();

			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	}

	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get : get,
		displayTime : displayTime
	};
})();

var listService=(function(){
	function getstatuslist (param , callback, error) {
		var pc_no = param.pc_no;
		$.getJSON("/admin/getdeliveryStatus.json", 
			function(data) {
				if (callback) {
					callback(data);
				}
		});
	}
	return{
		getstatuslist : getstatuslist
	};
})();

var cartservice=(function(){
	function getshoppingcart (param , callback, error) {
		var m_no = param.m_no;
		$.getJSON("/payment/getshopcart/ " + m_no + ".json", 
			function(data) {
				if (callback) {
					callback(data);
				}
		});
	}
	return{
		getshoppingcart : getshoppingcart
	};
})();

var purchaseservice=(function(){
	function getMember (param , callback, error) {
		var pc_no = param.pc_no;
		$.getJSON("/admin/purchaseOfMember/ " + pc_no + ".json", 
			function(data) {
				if (callback) {
					callback(data);
				}
		});
	}
	function getProduct (param , callback, error) {
		var pc_no = param.pc_no;
		$.getJSON("/admin/purchaseOfProduct/ " + pc_no + ".json", 
			function(data) {
				if (callback) {
					callback(data);
				}
		});
	}
	return{
		getMember : getMember,
		getProduct : getProduct
	};
})();

var productservice=(function(){
	function getproduct (param , callback, error) {
		var p_category1 = param.p_category1;
		var keyword = param.keyword;
		$.getJSON("/product/searchProduct/"+ p_category1+"/"+keyword+".json", 
			function(data) {
				if (callback) {
					callback(data);
				}
		});
	}
	
	return{
		getproduct : getproduct
	};
})();


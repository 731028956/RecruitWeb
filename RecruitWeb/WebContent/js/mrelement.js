			var Main = {
			    data() {
			      return {options: [{
					           value: '1',
				          label: '无工作经验'
				        }, {
				          value: '2',
				          label: '1-2年工作经验'
				        }, {
				          value: '3',
				          label: '3-5年工作经验'
				        }, {
				          value: '4',
				          label: '5-8年工作经验'
				        }, {
				          value: '5',
				          label: '8年以上'
					        	
					        }],
					        options1: [{
					          value: '1',
					          label: '我目前属于离职状态，可立即上岗'
					        }, {
					          value: '2',
					          label: '我目前在职，正考虑换个新环境(如果有何时的工作机会，到岗时间为1个月左右)'
					        }, {
					          value: '3',
					          label: '我对现在的工作还算满意，如果有更好的工作机会，我也可以考虑(到岗时间再议)'
					        }, {
					          value: '4',
					          label: '目前无跳槽打算'
					        }, {
					          value: '5',
					          label: '应届毕业生'
					        }],
					        options2: [{
					          value: '1',
					          label: '大专'
					        }, {
					          value: '2',
					          label: '本科'
					        }, {
					          value: '3',
					          label: '硕士'
					        }, {
					          value: '4',
					          label: '博士'
					        }, {
					          value: '5',
					          label: 'MBA'
					        },{
					          value: '6',
					          label: 'EMBA'
					        },{
					          value: '7',
					          label: '中专'	
					        },{
					          value: '8',
					          label: '高中'
					        	
					        },{
					          value: '9',
					          label: '初中'
					        	
					        },{
					          value: '10',
					          label: '其他'
					        	
					        }],
					         options3: [{
					          value: '1',
					          label: '随时'
					        }, {
					          value: '2',
					          label: '1周内'
					        }, {
					          value: '3',
					          label: '1个月内'
					        }, {
					          value: '4',
					          label: '3个月内'
					        }, {
					          value: '5',
					          label: '待定'
					        }],
					         options4: [{
					          value: '1',
					          label: '兼职'
					        }, {
					          value: '2',
					          label: '全职'
					        }, {
					          value: '3',
					          label: '实习'
					        }, {
					          value: '4',
					          label: '全/兼职'
					        }],
					        
			        value: $("#gzjy").val(),
			        value1: $("#workstate").val(),
			        value2: $("#xuewei").val(),
			        value3: new Date($("#birthday").val()),
			        value4: '',
			        value5: $("#dgsj").text(),
			        value6: $("#widcheck").text(),
			        value7: '',
			      	value8: '',
			      };
			    }
			  };
			var Ctor = Vue.extend(Main)
			new Ctor().$mount('#app')	
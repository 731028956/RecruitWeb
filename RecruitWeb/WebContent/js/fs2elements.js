			var Main = {
			    data() {
			      return {options: [{
					          value: '1',
					          label: '1000元/月以下'
					        }, {
					          value: '2',
					          label: '1000-2000元/月'
					        }, {
					          value: '3',
					          label: '2001-4000元/月'
					        }, {
					          value: '4',
					          label: '4001-6000元/月'
					        }, {
					          value: '5',
					          label: '6001-8000元/月'
					        },{
					          value: '6',
					          label: '8001-10000元/月'
					        },{
					          value: '7',
					          label: '10001-15000元/月'	
					        },{
					          value: '8',
					          label: '15001-20000元/月'
					        	
					        },{
					          value: '9',
					          label: '20000元以上/月'
					        	
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
					        
					        value: '1',
					        value1: '1',
					        value2: '1',
					        value3: [new Date(1990, 0, 1), new Date(1990, 0, 1)],
					        value4: '',
					        value5: '1',
					        value6: '1',
			       
			      };
			    }
			  };
			var Ctor = Vue.extend(Main)
			new Ctor().$mount('#app')	
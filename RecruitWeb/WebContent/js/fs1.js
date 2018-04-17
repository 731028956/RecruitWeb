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
				        options2: [{
				          value: '1',
				          label: '0-20人'
				        }, {
				          value: '2',
				          label: '20-50人'
				        }, {
				          value: '3',
				          label: '50-100人'
				        }, {
				          value: '4',
				          label: '100-300人'
				        }, {
				          value: '5',
				          label: '300-500人'
				        }, {
				          value: '6',
				          label: '500人以上'
				        }],
				        options3: [{
				          value: '1',
				          label: '私营'
				        }, {
				          value: '2',
				          label: '国企'
				        }, {
				          value: '3',
				          label: '外资'
				        }, {
				          value: '4',
				          label: '中外合资'
				        }],
		        pickerOptions1: {
		          disabledDate(time) {
		            return time.getTime() > Date.now();
		          },
		        },
		        value1: [new Date(1990, 0, 1)],
		        value: '1',
		        value2: '1', 
		        value3: '1',
		       
		      };
		    }
		  };
		var Ctor = Vue.extend(Main)
		new Ctor().$mount('#app')
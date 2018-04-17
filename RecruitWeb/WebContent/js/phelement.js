var Main = {
		    data() {
		      return {
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
		         value1: new Date($("#birthday").val()),
		        value: '',
		        value2: $("#scale").val(), 
		        value3:$("#cpnature").val(),
		      };
		    }
		  };
		var Ctor = Vue.extend(Main)
		new Ctor().$mount('#app')
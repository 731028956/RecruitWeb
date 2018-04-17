var Main = {
		    data() {
		      return {
		        pickerOptions1: {
		          disabledDate(time) {
		            return time.getTime() > Date.now();
		          },
		        },
		         value1: '',	       
		      };
		    }
		  };
		var Ctor = Vue.extend(Main)
		new Ctor().$mount('#app')
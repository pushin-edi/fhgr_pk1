import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

// new Vue({
//   render: h => h(App),
// }).$mount('#app')

console.log("yeah");

// eslint-disable-next-line
let word = "abc";
const mountEl = document.querySelector('#app');
new Vue({
  render: createElement => {
    const context = {
      props: { ...mountEl.dataset },
    };
    return createElement(App, context);
  }
}).$mount('#app');
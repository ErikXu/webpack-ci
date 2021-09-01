import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    {
      path: '/hello',
      name: 'hello',
      component: () => import('../pages/hello.vue'),      
    },
    { path: '/', redirect: '/hello', hidden: true }
  ]
});
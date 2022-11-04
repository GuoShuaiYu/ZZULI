import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import dianyingxinxi from '@/views/modules/dianyingxinxi/list'
    import wodeliangyuan from '@/views/modules/wodeliangyuan/list'
    import diqu from '@/views/modules/diqu/list'
    import discussliwushangcheng from '@/views/modules/discussliwushangcheng/list'
    import jingdianxinxi from '@/views/modules/jingdianxinxi/list'
    import jingdiangoupiao from '@/views/modules/jingdiangoupiao/list'
    import dianyinggoupiao from '@/views/modules/dianyinggoupiao/list'
    import dianyingfenlei from '@/views/modules/dianyingfenlei/list'
    import discussdianyingxinxi from '@/views/modules/discussdianyingxinxi/list'
    import discusswodeliangyuan from '@/views/modules/discusswodeliangyuan/list'
    import hunlianketang from '@/views/modules/hunlianketang/list'
    import jingdianfenlei from '@/views/modules/jingdianfenlei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
    import liwushangcheng from '@/views/modules/liwushangcheng/list'
    import discussjingdianxinxi from '@/views/modules/discussjingdianxinxi/list'
    import orders from '@/views/modules/orders/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '疫情公告',
        component: news
      }
      ,{
	path: '/dianyingxinxi',
        name: '电影信息',
        component: dianyingxinxi
      }
      ,{
	path: '/wodeliangyuan',
        name: '我的良缘',
        component: wodeliangyuan
      }
      ,{
	path: '/diqu',
        name: '地区',
        component: diqu
      }
      ,{
	path: '/discussliwushangcheng',
        name: '礼物商城评论',
        component: discussliwushangcheng
      }
      ,{
	path: '/jingdianxinxi',
        name: '景点信息',
        component: jingdianxinxi
      }
      ,{
	path: '/jingdiangoupiao',
        name: '景点购票',
        component: jingdiangoupiao
      }
      ,{
	path: '/dianyinggoupiao',
        name: '电影购票',
        component: dianyinggoupiao
      }
      ,{
	path: '/dianyingfenlei',
        name: '电影分类',
        component: dianyingfenlei
      }
      ,{
	path: '/discussdianyingxinxi',
        name: '电影信息评论',
        component: discussdianyingxinxi
      }
      ,{
	path: '/discusswodeliangyuan',
        name: '我的良缘评论',
        component: discusswodeliangyuan
      }
      ,{
	path: '/hunlianketang',
        name: '婚恋课堂',
        component: hunlianketang
      }
      ,{
	path: '/jingdianfenlei',
        name: '景点分类',
        component: jingdianfenlei
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/shangpinfenlei',
        name: '商品分类',
        component: shangpinfenlei
      }
      ,{
	path: '/liwushangcheng',
        name: '礼物商城',
        component: liwushangcheng
      }
      ,{
	path: '/discussjingdianxinxi',
        name: '景点信息评论',
        component: discussjingdianxinxi
      }
      ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;

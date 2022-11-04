const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootd3x17/",
            name: "springbootd3x17",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootd3x17/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "结合疫情情况的婚恋系统"
        } 
    }
}
export default base

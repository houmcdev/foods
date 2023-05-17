const base = {
    get() {
        return {
            url : "http://localhost:8080/foods/",
            name: "foods",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/foods/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "高校食堂点餐系统"
        } 
    }
}
export default base

const base = {
    get() {
        return {
            url : "http://localhost:8080/mhwangshangdingpiao/",
            name: "mhwangshangdingpiao",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/mhwangshangdingpiao/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "民航网上订票系统"
        } 
    }
}
export default base

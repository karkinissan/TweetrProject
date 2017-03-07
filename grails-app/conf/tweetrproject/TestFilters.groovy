package tweetrproject

class TestFilters {

    def filters = {
//        allExceptIndex(controller: 'user', action: 'index', find: true, invert: true) {
        all(controller: 'user|profile|status', action: 'editProfile|index|viewProfile|deleteStatus|listUserStatus' +
                '|listAllStatus|save|saveProfile', find: true) {
            before = {
                if (!session.userId) {
                    println("Redirecting")
                    redirect(uri: "/")
//                    render (view: "/index")
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}

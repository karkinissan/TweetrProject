package tweetrproject

class UserController {
    def userService
    def statusService

    def index() {
        render (view:"/index")
    }

    def register() {
        if (userService.register(params.userName, params.password)) {
            render(view: "/index", model: [message: "Registration successful.<br> Please Login To Continue", color:"green"])
        } else {
            render(view: "/index", model: [message: "Registration Unsuccessful. <br> Please Try Again.",color: "red"])
        }
    }

    def login() {
        User user = userService.login(params.userName, params.password)
        if (user) {
            session.userId = user.id
            if (user.profile){
            session.userFullName = user?.profile?.fullName}
            goToHome()
        } else {
            render(view: "/index", model: [message: "Login Unsuccessful"])

        }
    }
    def logout(){
        session.invalidate()
        render (view: "/index")
    }
    def listUsers() {
        def userList = User.list()
        render(template: "userList", collection: userList, var: "user")
    }

    def follow() {
        println(params.userId)
        User loggedInUser = User.get(session.userId)
        User followingUser = User.get(params.userId)
        loggedInUser.addToFollowing(followingUser)
        followingUser.addToFollowers(loggedInUser)
        goToHome()

    }

    def unfollow() {
        User currentUser = User.get(session.userId)
        User followingUser = User.get(params.userId)
        currentUser.removeFromFollowing(followingUser)
        followingUser.removeFromFollowers(currentUser)
        goToHome()
    }

    def listFollowing() {
    }

    def goToHome() {
        User user = User.get(session.userId)
        def followingSize = user.following.size()
        def followerSize=user.followers.size()
        def userList = User.list()
        userList.remove(user)
        def statusList = statusService.followingOnlyStatuses(user)
        render(view: "/home", model: [user: user, userList: userList, statusList: statusList,
                                      followings:followingSize,followers:followerSize])
    }
}



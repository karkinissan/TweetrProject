package tweetrproject

class StatusController {
    def statusService

    def index() {}

    def save() {
        User u = User.get(session.userId)
        Status status = new Status(params)
        if (status.tweet) {
            u.addToStatuses(status)
            u.save(flush: true)
        }
        render(template: "/status/feed", collection: status, var: "status", model: [user: u])

    }

    def listAllStatus() {
        User u = User.get(session.userId)
        def statusList = Status.list()
        statusList.sort { it.dateCreated }
        statusList = statusList.reverse()
        return statusList
//        render (template:"postEntries",collection: statusList,var: "status",model: [user:u])
    }

    def listUserStatus() {
        User user = User.get(params.userId)
        def statusList = Status.findAllByUserLike(user)
        statusList.sort { it.dateCreated }
        statusList = statusList.reverse()
        def userList = User.list()
        userList.remove(User.get(session.userId))
        def followingSize = user.following.size()
        def followerSize=user.followers.size()
        render(view: "/userProfile", model: [user: user, userList: userList, statusList: statusList,
                                             followings:followingSize,followers:followerSize])
//        render (template:"postEntries",collection: statusList,var: "status",model: [user:u])
    }

    def deleteStatus() {
        User user = User.get(session.userId)
        def status = Status.get(params.statusId)
        if (session.userId == status.user.id) {
            status.delete()
            goToHome()
        } else {
            render("You are not authorized to delete this status")
        }

    }

    def editStatusAjax() {
        User user = User.get(session.userId)
        def status = Status.get(params.statusId)
        if (session.userId == status.user.id) {
            render(template: "/status/editStatus", model: [user: user, status: status])
        }
    }

    def updateStatus() {
        User user = User.get(session.userId)
        def status = Status.get(params.statusId)
        if (!params.cancel) {

            if (session.userId == status.user.id) {
                status.tweet = params.tweet
            }
        }
        render(template: "/status/feed", collection: status, var: "status", model: [user: user])

    }

    def goToHome() {
        User user = User.get(session.userId)
        def followingSize = user.following.size()
        def followerSize = user.followers.size()
        def userList = User.list()
        userList.remove(user)
        def statusList = statusService.followingOnlyStatuses(user)
        render(view: "/home", model: [user      : user, userList: userList, statusList: statusList,
                                      followings: followingSize, followers: followerSize])
    }
}


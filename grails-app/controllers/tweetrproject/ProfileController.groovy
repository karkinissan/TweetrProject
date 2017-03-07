package tweetrproject




class ProfileController {
    def statusService

    def index() {
    }

    def saveProfile(){
        def user = User.get(session.userId)
        def photo = request.getFile("picture")
        if(!user.profile) {
            def profile = new Profile()
            user.profile = profile

        }
        if(photo.bytes){
            user.profile.picture = photo.bytes
            user.profile.pictureType = photo.contentType
        }
        user.profile.properties['fullName','address','DOB','gender']=params

        if (user.save()){
            goToHome()
        }
        else
            render "Edit FAILED"
    }
    def displayPicture(){
        def user = User.get(params.id)
        if(!user || !user?.profile?.picture||!user?.profile?.pictureType){
            response.sendError(404)
            return
        }

        response.contentType = user.profile.pictureType
        response.contentLength = user.profile.picture.size()
        OutputStream out = response.outputStream
        out.write(user.profile.picture)
        out.close()

    }
    def testAction(){
        render "Test Success"
    }
    def editProfile(){
        def user = User.get(session.userId)
        render(view: "/editProfile", model: [user:user])
    }
    def viewProfile(){
        redirect(controller: "status",action: "listUserStatus",params: [userId:params.userId])
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

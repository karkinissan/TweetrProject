package tweetrproject

class UserService {

    def serviceMethod() {

    }
    def login(def userN,def pwd){
//        User u = User.findByUserNameLikeAndPasswordLike(userN,pwd)
        def userList=User.createCriteria().list {
            and{
                like('userName',userN)
                like("password",pwd)
            }
        }
        User u = userList[0]
        if (u){
            return u
        }
    }
    def register(def userN, def pwd){
        def userInstance = new  User(userName:userN,password:pwd)
        if (userInstance.save()) {
            return true
        }
        else return false
    }
}

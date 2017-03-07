package tweetrproject

class UserIdSessionIdCheckTagLib {
    def checkId = {attrs,body ->
        if (session.userId==attrs.userId){
            out<<body()
        }
    }
}

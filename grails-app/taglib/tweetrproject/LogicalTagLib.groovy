package tweetrproject

class LogicalTagLib {
    def welcomeBack = { attrs, body ->
        if(attrs.name){
            out << body()
        }
    }
}

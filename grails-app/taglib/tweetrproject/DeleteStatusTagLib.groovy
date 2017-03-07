package tweetrproject

class DeleteStatusTagLib {
    def deleteStatus={attrs,body ->
        User user = User.get(session.userId)
        Status status = Status.get(attrs.statusId)
        if (user?.statuses?.id.contains(attrs.statusId)){
            /*println "true"
            out<<"<a href='${createLink(controller: 'status', action: 'deleteStatus',params: [statusId:params.statusId])}'"
            out<< "Delete </a>"*/
            out<<body()
        }
    }
}

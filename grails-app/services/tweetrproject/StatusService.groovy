package tweetrproject

class StatusService {

    def serviceMethod() {

    }


    def followingOnlyStatuses(def currentUser) {
        def followingList = currentUser.following
        def statusList = Status.createCriteria().list {
            or {
                order('dateCreated', 'desc')
                maxResults(10)
                user {
                    or {
                        for (int userId : currentUser.following.id) {
                            eq('id', userId)
                        }
                        eq('id', currentUser.id)
                    }
                }
            }
        }
        return statusList
    }
}


package tweetrproject

class FollowButtonTagLib {
    def followButton = { attrs, body ->
        if (session.userId != attrs.userId) {
            out << body()
        }
    }
    def checkFollow = { attrs, body ->
        User loggedInUser = User.get(session.userId)
        if (loggedInUser.following) {
            for (def user : loggedInUser.following) {
                if (!user.id.equals(attrs.userId)) {
                    out << body()
                    return
                }
            }
        } else {
            out << body()
        }
    }
    def followUnfollowEditButton = { attrs ->
        if (session.userId != attrs.userId) {
            User loggedInUser = User.get(session.userId)
//            def followingList=[]
            if (loggedInUser.following) {
//                for (def user : loggedInUser.following) {
//                    followingList.add(user.id)
//                }

                for (def user : loggedInUser.following) {
//                    if (followingList.contains(attrs.userId)) {
                    if (loggedInUser?.following?.id.contains(attrs.userId)) {
                        User u = User.get(attrs.userId)
                        out << "<a href ='${createLink(controller: 'user', action: 'unfollow', params: [userId: attrs.userId])}' class=\"btn btn-danger btn-lg\">"
                        out << "<span class=\"glyphicon glyphicon-remove\"></span>"
                        out << "&nbsp;&nbsp;Unfollow " + u.profile.fullName + "</a>"
                        return
//                    } else if (!followingList.contains(attrs.userId)) {
                    } else if (!loggedInUser?.following?.id.contains(attrs.userId)) {
                        User u = User.get(attrs.userId)
                        out << "<a href ='${createLink(controller: 'user', action: 'follow', params: [userId: attrs.userId])}' class=\"btn btn-primary btn-lg\">"
                        out << "Follow " + u.profile.fullName + "</a>"
                        return
                    }
                }
            } else {
                User u = User.get(attrs.userId)
                out << "<a href ='${createLink(controller: 'user', action: 'follow', params: [userId: attrs.userId])}' class=\"btn btn-primary btn-lg\">"
                out << "Follow " + u.profile.fullName + "</a>"
                return
            }
        } else {
            out << "<a href ='${createLink(controller: 'profile', action: 'editProfile')}' class=\"btn btn-success btn-lg\">"
            out << "Edit Profile</a>"
        }
    }
    def smallFollowUnfollowEditButton = { attrs ->
        if (session.userId != attrs.userId) {
            User loggedInUser = User.get(session.userId)
//            def followingList=[]
            if (loggedInUser.following) {
//                for (def user : loggedInUser.following) {
//                    followingList.add(user.id)
//                }

                for (def user : loggedInUser.following) {
//                    if (followingList.contains(attrs.userId)) {
                    if (loggedInUser?.following?.id.contains(attrs.userId)) {
                        User u = User.get(attrs.userId)
                        out << "<a href ='${createLink(controller: 'user', action: 'unfollow', params: [userId: attrs.userId])}' class=\"btn btn-danger btn-xs\">"
                        out << "Unfollow</a>"
                        return
//                    } else if (!followingList.contains(attrs.userId)) {
                    } else if (!loggedInUser?.following?.id.contains(attrs.userId)) {
                        User u = User.get(attrs.userId)
                        out << "<a href ='${createLink(controller: 'user', action: 'follow', params: [userId: attrs.userId])}' class=\"btn btn-primary btn-xs\">"
                        out << "Follow</a>"
                        return
                    }
                }
            } else {
                User u = User.get(attrs.userId)
                out << "<a href ='${createLink(controller: 'user', action: 'follow', params: [userId: attrs.userId])}' class=\"btn btn-primary btn-xs\">"
                out << "Follow</a>"
                return
            }
        } else {
            out << "<a href ='${createLink(controller: 'profile', action: 'editProfile')}' class=\"btn btn-success btn-xs\">"
            out << "Edit Profile</a>"
        }
    }
}


package tweetrproject

class User {
    int id
    String userName
    String password

    Profile profile
    static hasMany = [statuses:Status,followers:User,following:User]

    static constraints = {
        userName(nullable: false,unique: true, minSize: 6)
        password(nullable: false,minSize: 6)
        profile(nullable: true)
        statuses(nullable: true)
        followers(nullable: true)
        following(nullable: true)
    }
}

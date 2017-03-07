package tweetrproject

class Status {
    int id
    String tweet
    Date dateCreated

    static belongsTo = [user:User]

    static constraints = {
        tweet(nullable: false)
    }

}

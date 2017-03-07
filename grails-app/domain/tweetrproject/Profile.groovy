package tweetrproject

class Profile {
    int id
    String fullName
    String address
    String DOB
    String gender
    byte[] picture
    String pictureType

    static belongsTo = User

    static constraints = {
        fullName(nullable: true)
        address(nullable: true)
        DOB(nullable: true)
        gender(nullable: true)
        picture(nullable: true)
        pictureType(nullable: true)
    }
}

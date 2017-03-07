package tweetrproject

class SimpleTagLib {
    def helloTag = { attrs->
        def name=attrs.name
        if (!name){
            out<< "Hello Anonymous"
        }
        else {
            out<< "Hello " + name
        }
    }
}

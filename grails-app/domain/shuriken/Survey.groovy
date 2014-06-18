package shuriken

class Survey {

    static constraints = {
    }

    static hasMany = [questions: Question]
    String name;
}

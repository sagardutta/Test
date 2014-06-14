package shuriken

class Question {

    static constraints = {
    }
    static hasMany = [choices: ResponseChoice]
  String id
  QuestionCategory category
  String text
  Date created
  
}

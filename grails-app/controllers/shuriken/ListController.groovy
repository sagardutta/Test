package shuriken

class ListController {
 static allowedMethods = [first:['POST','GET'],
                             action3:['POST', 'DELETE']]
    def index() {
	
	render (view:"login")
	 }

    def create(){
        def selectedQuestions = params["selectedQuestions"]
        def questions = []
        for (i in selectedQuestions){
             questions.add(Question.get(i))
        }
        [questionInstanceList:questions]
    }

	def first(){
	render (view:"first")	
	}

	def second(){
	render (view:"second")	
	}

	def third(){
	render (view:"third")
	}
	
}

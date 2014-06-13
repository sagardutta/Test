package shuriken

class ListController {
 static allowedMethods = [first:['POST','GET'],
                             action3:['POST', 'DELETE']]
    def index() {
	
	render (view:"login")
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

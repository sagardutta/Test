import org.codehaus.groovy.grails.commons.GrailsApplication;
import shuriken.QuestionCategory;
import shuriken.Question;
import shuriken.ResponseCategory;
import shuriken.ResponseChoice;

class BootStrap {
	GrailsApplication grailsApplication
	def fixtureLoader
    def init = { servletContext  ->
		//fixtureLoader = grailsApplication.mainContext.getBean('fixtureLoader'); // INJECT LOADER
		environments {
			
			development {
				fixtureLoader.load {
					
					load_QCat1(QuestionCategory) {
						category = "ADMISSIONS"
						}
					load_QCat2(QuestionCategory) {
						category = "DIET"
						}
					load_response_cat1(ResponseCategory){
						
						text = "HIGH"
					}
					load_response_cat2(ResponseCategory){
						
						text = "LOW"
					}
					load_response1(ResponseChoice){
						choice = "YES"
						category = load_response_cat1
					}
					load_response2(ResponseChoice){
						choice = "NO"
						category = load_response_cat2
					}
					load_question1(Question){
						
						text = "Were you greeted at the front desk"
						category = load_QCat1
						choices = [load_response1,load_response2]
						created ='1/1/2014'
					}
					load_question2(Question){
						
						text = "Was the paper work sufficient"
						category = load_QCat1
						choices = [load_response1,load_response2]
						created ='1/1/2014'
					}
					load_question3(Question){
						
						text = "Was the food tasty ?"
						category = load_QCat2
						choices = [load_response1,load_response2]
						created ='1/1/2014'
					}
					load_question4(Question){
						
						text = "Was the food delivered on time"
						category = load_QCat2
						choices = [load_response1,load_response2]
						created ='1/1/2014'
					}
				}
				
			}
		}
		
    }
    def destroy = {
    }
}

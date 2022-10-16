/**
 * @description       : makes apex REST callouts to Spoonacular API to get recipe data
 * @author            : Chloe Xinying Zhou  
 * @last modified on  : 2022-10-16
 * @last modified by  : Chloe Xinying Zhou  
 * Ver   Date         Author                 Modification
 * 1.0   2022-10-16   Chloe Xinying Zhou     Initial Version
**/
public class Spoonacular {
    private static final String SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final String API_KEY = 'replace_with_your_own_api_key';
    
    @AuraEnabled
    public static String getRandomRecipe() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(SPOONACULAR_API + '/recipes/random?apiKey=' + API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            return response.getBody();
        } else {
            return '';
        }
    }
    
    @AuraEnabled
    public static String getRecipe(String recipeId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://api.spoonacular.com/recipes/{id}/information
        request.setEndpoint(SPOONACULAR_API + '/recipes/' + recipeId + '/information?apiKey=' + API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            return response.getBody();
        } else {
            return '';
        }
    }
    
    @AuraEnabled
    public static String getRecipeByIngredients(String ingredients) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://api.spoonacular.com/recipes/findByIngredients
        request.setEndpoint(SPOONACULAR_API + '/recipes/' + '/findByIngredients?apiKey=' + API_KEY + '&ingredients=' + ingredients);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            return response.getBody();
        } else {
            return '';
        }
    }

}
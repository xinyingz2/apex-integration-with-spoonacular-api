public class Spoonacular {
    private static final String SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final String API_KEY = '73bcd350939f49d4b74247118ea04c6e';
    
    public static void getRandomReceipe() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(SPOONACULAR_API + '/recipes/random?apiKey=' + API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        System.debug('response code : ' + response.getStatusCode());
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            System.debug('response code : ' + response.getBody());
        }
    }
    
    public static void getReceipe(String receipeId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://api.spoonacular.com/recipes/{id}/information
        request.setEndpoint(SPOONACULAR_API + '/recipes/' + receipeId + '/information?apiKey=' + API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        System.debug('response code : ' + response.getStatusCode());
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            System.debug('response code : ' + response.getBody());
        }
    }
    
    public static void getReceipeByIngredients(String ingredients) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://api.spoonacular.com/recipes/findByIngredients
        request.setEndpoint(SPOONACULAR_API + '/recipes/' + '/findByIngredients?apiKey=' + API_KEY + '&ingredients=' + ingredients);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        System.debug('response code : ' + response.getStatusCode());
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            System.debug('response code : ' + response.getBody());
        }
    }

}
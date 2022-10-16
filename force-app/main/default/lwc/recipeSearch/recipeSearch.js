import { LightningElement, track } from 'lwc';
/* controller */
import getRandomRecipe from "@salesforce/apex/Spoonacular.getRandomRecipe";
import getRecipeByIngredients from "@salesforce/apex/Spoonacular.getRecipeByIngredients";

export default class RecipeSearch extends LightningElement {

    @track recipes = [];

    fetchRecipesByIngredients() {
        const ingredients = this.template.querySelector(".ingredient-input").value;
        getRecipeByIngredients({ ingredients })
            .then((data) => {
                this.recipes = JSON.parse(data);
            })
            .catch((error) => {
                console.error(error);
            });
    }

    fetchRandomRecipe() {
        getRandomRecipe()
            .then((data) => {
                this.recipes =
                JSON.parse(data) && JSON.parse(data).recipes
                    ? JSON.parse(data).recipes
                    : [];
            })
            .catch((error) => {
                console.error(error);
            });
    }
}
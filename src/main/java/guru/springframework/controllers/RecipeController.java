package guru.springframework.controllers;

import guru.springframework.domain.Ingredient;
import guru.springframework.domain.Recipe;
import guru.springframework.services.RecipeService;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RecipeController {

    private final RecipeService recipeService;

    public RecipeController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    protected Optional<String> getPreviousPageByRequest(HttpServletRequest request)
    {
        return Optional.ofNullable(request.getHeader("Referer"));
    }

    @RequestMapping(value = {"/recipe/{id}", "/recipe.html/{id}"}, method = RequestMethod.GET)
    public String getRecipeById(Model model, @PathVariable("id") long id, HttpServletRequest request) {

        Optional<Recipe> recipe = recipeService.getAllRecipes()
                .stream()
                .filter(o -> o.getId() == id)
                .findFirst();

        if(!recipe.isPresent()) throw new RuntimeException("Recipe not found!");

        model.addAttribute("recipe", recipe.get());
        model.addAttribute("previousPage", getPreviousPageByRequest(request).orElse("/"));

        List<Ingredient> ingredientsSorted = new ArrayList<>(recipe.get().getIngredients());
        ingredientsSorted.sort(Comparator.comparing(Ingredient::getDescription));

        model.addAttribute("igredientsSorted", ingredientsSorted);

        return "recipe/show";
    }
}

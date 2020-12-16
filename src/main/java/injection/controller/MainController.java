package injection.controller;

import injection.model.Notes;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.Expression;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.SimpleEvaluationContext;
import org.springframework.expression.spel.support.StandardEvaluationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    private static List<Notes> notes = new ArrayList<>();

    static {
        notes.add(new Notes("Shop", "Buy apples and bananas"));
    }

    @GetMapping(value = {"/notesList"})
    public String viewPersonList(Model model) {
        model.addAttribute("notes", notes);
        return "notesList";
    }

    @PostMapping(value = {"/notesList"})
    public String processForm(@RequestParam("noteTitle") String noteTitle, @RequestParam("note") String note, Model model) {
        try {
            ExpressionParser expressionParser = new SpelExpressionParser();
            Expression expression = expressionParser.parseExpression(note);
            StandardEvaluationContext standardEvaluationContext = new StandardEvaluationContext();

            //SimpleEvaluationContext has no access to Java classes and referring to other beans. Should use this context instead of StandardEvaluationContext
            EvaluationContext simpleEvaluationContext = SimpleEvaluationContext.forReadOnlyDataBinding().build();

            note = (String) expression.getValue(standardEvaluationContext);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        notes.add(new Notes(noteTitle, note));
        model.addAttribute("notes", notes);
        return "notesList";
    }
}
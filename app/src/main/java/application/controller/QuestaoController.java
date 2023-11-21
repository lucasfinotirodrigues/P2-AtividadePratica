package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.repository.AlternativaRepository;
import org.springframework.ui.Model;

import application.repository.QuestaoRepository;
import application.model.Questao;


@Controller
@RequestMapping("/questao")
public class QuestaoController {

    @Autowired
    private QuestaoRepository questaoRepository;

    @Autowired
    private AlternativaRepository alternativaRepository;

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("questoes", questaoRepository.findAll());
        return "questao/list";
    }

    @RequestMapping("/insert")
    public String insert(Model ui) {
        ui.addAttribute("alternativas", alternativaRepository.findAll());
        return "questao/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("enunciado") String enunciado)
    {
        Questao questao = new Questao();
        questao.setEnunciado(enunciado);
        questaoRepository.save(questao);
        System.out.println("Enunciado: " + enunciado);
        return "redirect:/questao/list";
    }

    @RequestMapping("/update")
    public String update(@RequestParam("id") Long id, Model ui) {
        Optional<Questao> questao = questaoRepository.findById(id);

        if (questao.isPresent()) {
            ui.addAttribute("questao", questao.get());
            ui.addAttribute("alternativas", alternativaRepository.findAll());
            return "questao/update";
        }

        return "redirect:/questao/list";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") Long id, @RequestParam("enunciado") String enunciado) {
        Optional<Questao> questao = questaoRepository.findById(id);

        if(questao.isPresent()) {
            questao.get().setEnunciado(enunciado);
            questaoRepository.save(questao.get());
        }

        return "redirect:/questao/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("id") Long id, Model ui) {
        Optional<Questao> questao = questaoRepository.findById(id);

        if(questao.isPresent()) {
            ui.addAttribute("questao", questao.get());
            return "questao/delete";
        }

        return "redirect:/questao/list";
    }

    @RequestMapping(value="delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") Long id) {
        questaoRepository.deleteById(id);
        return "redirect:/questao/list";
    }
}
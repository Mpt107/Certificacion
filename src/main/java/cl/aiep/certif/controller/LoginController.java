package cl.aiep.certif.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cl.aiep.certif.controller.service.CursoService;
import cl.aiep.certif.controller.service.EstudianteService;
import cl.aiep.certif.dao.dto.EstudianteDTO;
import cl.aiep.certif.util.CommonUtil;

@Controller
public class LoginController {

	@Autowired
	EstudianteService serviceEst;

	@Autowired
	CursoService serviceCurso;

	@GetMapping("/login")
	public String viewLoginPage() {
		return "login";
	}

	@GetMapping("/")
	public String indexCursos(final Model model) {
		model.addAttribute("cursos", serviceCurso.obtenerCursos());

		return "index";
	}

	@GetMapping("/home")
	@PreAuthorize("isAuthenticated()")
	public String index(final Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String role = auth.getPrincipal().toString();
		String rut = auth.getName();
		model.addAttribute("curso", serviceEst.obtenerCurso(rut));
		model.addAttribute("estudiante", serviceEst.obtenerEstudiante(rut));
		model.addAttribute("contenidos", serviceCurso.obtenerContenidos(serviceEst.obtenerCurso(rut).getId()));

		model.addAttribute("cursos", serviceCurso.obtenerCursos());
		if (role.contains("ADMIN")) {

			return "redirect:/admin";
		}

		return "home";

	}

	@GetMapping("/registrate")
	public String viewRegister(final Model model) {
		model.addAttribute("estudiante", new EstudianteDTO());
		model.addAttribute("regiones", serviceEst.obtienRegiones());
		return "nuevo";

	}

	@PostMapping("/guardar")
	public String guardar(@Valid EstudianteDTO estudiante, BindingResult result,RedirectAttributes flash, final Model model) {
		if (result.hasErrors()) {
			model.addAttribute("estudiante", estudiante);
			model.addAttribute("regiones", serviceEst.obtienRegiones());
			model.addAttribute("mensaje", result.getFieldError().getDefaultMessage());
			return "nuevo";
		} else {

		}

		if (CommonUtil.validarRut(estudiante.getRut()))
			serviceEst.guardaEstudiante(estudiante);
		else {
			model.addAttribute("estudiante", estudiante);
			model.addAttribute("regiones", serviceEst.obtienRegiones());
			model.addAttribute("mensaje", "Rut Invalido");
			return "nuevo";

		}

		return "redirect:/login";

	}

	@GetMapping("/admin")
	@PreAuthorize("isAuthenticated()")
	public String adminCursos(final Model model) {
		model.addAttribute("cursos", serviceCurso.obtenerCursos());
		return "indexAdmin";
	}

}

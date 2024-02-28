package productcurdapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcurdapp.dao.ProductDao;
import productcurdapp.model.Product;
import productcurdapp.dao.LoginDao;
import productcurdapp.model.login;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private LoginDao loginDao;

	@RequestMapping("/home")
	public String home(Model m)
	{
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	
	//login page
	@RequestMapping("/")
	public String login(Model m)
	{
		return "login";
	}
	
	
	
	//show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{
		m.addAttribute("title", "Beanyy Add Product");
		return "add_product_form";
	}
	
	//handle add product form
	@RequestMapping(value="/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
		
	}
	
	//delete handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request)
	{
		this.productDao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}
	
	//update
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model model)
	{
		Product product = this.productDao.getProduct(pid);
		model.addAttribute("product",product);
		return "update_form";
	}
}
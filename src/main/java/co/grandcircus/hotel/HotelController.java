package co.grandcircus.hotel;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotel.dao.HotelRepository;
import co.grandcircus.hotel.entity.Hotel;

@Controller
public class HotelController {
	
	@Autowired
	private HotelRepository hotelDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Hotel> hotels = hotelDao.findAll();
		Set<String> cities = new HashSet<>();
		for(Hotel hotel : hotels) {
			cities.add(hotel.getCity());
		}
//		System.out.println(cities);
//		System.out.println(hotels);
		
		return new ModelAndView("index", "cities", cities); // "cities" will be chosen from index jsp. cities is the guy from the set.
	}
	
	@RequestMapping("/results")
	public ModelAndView ShowHotels( 
		@RequestParam("cities") String cities) {
		List<Hotel> hotels = hotelDao.findAllByCityOrderByPricePerNightAsc(cities);
		ModelAndView mv = new ModelAndView();
		mv.addObject("hotels", hotels);
		mv.addObject("cities", cities);
		return mv;
	}
	
	


}

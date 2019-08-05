package co.grandcircus.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.hotel.entity.Hotel;

public interface HotelRepository extends JpaRepository<Hotel, Long> {

	List<Hotel> findAllByCity(String city);
	public List<Hotel> findAllByCityOrderByPricePerNightAsc(String city);
	
}

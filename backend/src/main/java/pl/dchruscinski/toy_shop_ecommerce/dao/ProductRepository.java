package pl.dchruscinski.toy_shop_ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import pl.dchruscinski.toy_shop_ecommerce.entity.Product;

@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long> {
}

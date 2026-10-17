package demo.listing;
import org.springframework.web.bind.annotation.*; import java.util.*;
@RestController @RequestMapping("/api/listings") public class ListingController {
 @GetMapping public List<Map<String,Object>> list(){return List.of(Map.of("id",101,"title","Used bicycle","category","sports"),Map.of("id",102,"title","Study table","category","furniture"));}
 @PostMapping public Map<String,Object> create(@RequestBody Map<String,Object> body){return Map.of("status","created","listing",body);}
}

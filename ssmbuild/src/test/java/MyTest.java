import com.feng.mapper.BooksMapper;
import com.feng.pojo.Books;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BooksMapper mapper = context.getBean("mapper", BooksMapper.class);
        List<Books> books = mapper.getBooks();
        for (Books book : books) {
            System.out.println(book);
        }
    }
}

package guru.springframework.domain;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

public class CategoryTest {

    Category category;

    @Before
    public void setup() {
        category = new Category();
    }

    @Test
    public void getId() {
        Long value = 4L;
        category.setId(value);
        assertEquals(value, category.getId());
    }

    @Test
    public void setId() {
    }

    @Test
    public void getDescription() {
    }

    @Test
    public void setDescription() {
    }
}
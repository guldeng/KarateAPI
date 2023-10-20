package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class KraftDataGenerator {
    /**
     * {
     * "name": "aFm",
     * "email": "dev@krafttechexlab.com",
     * "password": "123467",
     * "about": "About Me",
     * "terms": "10"
     * }
     */

    public static Map<String, Object> createUser() {
        Faker faker = new Faker();
        String userName = faker.name().fullName();
        String userEmail = faker.internet().emailAddress();
        String password = faker.internet().password(8, 16, true, true, true);
        Map<String, Object> userBody = new HashMap<>();
        userBody.put("name", userName);
        userBody.put("email", userEmail);
        userBody.put("password", password);
        userBody.put("about", "About Me");
        userBody.put("terms", "13");
        return userBody;
    }


}

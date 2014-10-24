package User;

import com.essence.core.logging.LoggingEvents;
import com.essence.core.user.User;
import junit.framework.Assert;
import org.junit.Test;

import static org.junit.Assert.*;

import java.io.IOException;

/**
 * Created by manuelrodrigues on 20/10/2014.
 */
public class UserTest extends AbstractTest {


    @Test
    public void testUser() throws Exception {
        User user = new User("ma@nuel.com", "mmmmm");
        user.save();
        LoggingEvents.level5Threat(user.getId()+"");
        user.delete();
    }


    @Override
    public void afterSetUp() throws IOException, InterruptedException {

    }

    @Override
    public void afterTearDown() {

    }
}

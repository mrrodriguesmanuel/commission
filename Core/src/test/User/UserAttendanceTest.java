package User;

import com.essence.core.logging.LoggingEvents;
import com.essence.core.user.User;
import com.essence.core.user.UserAttendance;
import org.junit.Test;

import java.io.IOException;
import java.util.Date;

/**
 * Created by manuelrodrigues on 20/10/2014.
 */
public class UserAttendanceTest extends AbstractTest{

    @Test
    public void testUserAttendance() throws Exception {
        User user = new User("ma@nuel.com", "mmmm");
        UserAttendance attendance = new UserAttendance(user,new Date(), 5.99, new Date(), new Date());
        attendance.save();
        LoggingEvents.level5Threat(attendance.getId()+"");
        attendance.delete();
    }

    @Override
    public void afterSetUp() throws IOException, InterruptedException {

    }

    @Override
    public void afterTearDown() {

    }
}

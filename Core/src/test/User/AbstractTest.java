package User;

import com.essence.core.vos.StartupListener;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import com.google.appengine.tools.development.testing.LocalTaskQueueTestConfig;
import com.googlecode.objectify.ObjectifyService;
import org.junit.After;
import org.junit.Before;
import org.mockito.Mockito;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public abstract class AbstractTest implements iTest {
 
    protected final HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
    protected final HttpServletRequest request = Mockito.mock(HttpServletRequest.class);

    private final LocalServiceTestConfig[] configs = {
            new LocalDatastoreServiceTestConfig(),
            new LocalTaskQueueTestConfig().setQueueXmlPath("/reports-war/src/test/resources/test-queue.xml")
    };

    private final LocalServiceTestHelper helper = new LocalServiceTestHelper(configs);
    public class FakeServletOutputStream extends ServletOutputStream {
        private final ByteArrayOutputStream baos = new ByteArrayOutputStream();
        public void write(int i) throws IOException {
            baos.write(i);
        }
        public String getContent() {
            return baos.toString();
        }
    }



    @Before
    public void setUp() throws Exception {
        helper.setUp();
        // Primary VOs

        for (Class clazz : StartupListener.entities){
            ObjectifyService.register(clazz);
        }

        final FakeServletOutputStream servletOutputStream = new FakeServletOutputStream();
        Mockito.when(response.getOutputStream()).thenReturn(servletOutputStream);

        afterSetUp();

    }

    @After
    public void tearDown() {
        helper.tearDown();
        ObjectifyService.reset();
        afterTearDown();
    }

}

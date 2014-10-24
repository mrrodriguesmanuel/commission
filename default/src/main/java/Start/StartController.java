package Start; /**
 * Created by manuelrodrigues on 22/10/14.
 */
import com.essence.controller.EditUserController;
import com.essence.controller.MenuController;
import com.essence.controller.UserLoginController;
import com.googlecode.htmleasy.HtmleasyProviders;

import javax.ws.rs.core.Application;
import java.util.HashSet;
import java.util.Set;


public class StartController extends Application{

        public static Class[] entities = {
                UserLoginController.class,
                MenuController.class,
                EditUserController.class
                };

        public Set<Class<?>> getClasses() {
            Set<Class<?>> myServices = new HashSet<>();

            for (Class clazz : entities){
                myServices.add(clazz);
            }

            myServices.addAll(HtmleasyProviders.getClasses());

            //DevelopmentEnviroment.runDev();
            return myServices;
        }
}


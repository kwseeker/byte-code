package top.kwseeker.bytecode.monitor.context;

import top.kwseeker.bytecode.monitor.bean.User;

public class UserContext {

    private User user = new User("Arvin", 18);

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}

package top.kwseeker;

import com.sun.tools.attach.VirtualMachine;

class AgentMainAttacher {

    public static void main(String[] args) throws Exception {
        if (args.length != 2) {
            System.out.println("args size error!");
        }
        String pid = args[0];
        String agentJarPath = args[1];
        VirtualMachine vm = VirtualMachine.attach(pid);
        vm.loadAgent(agentJarPath);
    }
}

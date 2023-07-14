package top.kwseeker.bytecode.skywalking.plugin;

import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.dynamic.DynamicType;
import top.kwseeker.bytecode.skywalking.boot.AgentPackageNotFoundException;
import top.kwseeker.bytecode.skywalking.boot.AgentPackagePath;
import top.kwseeker.bytecode.skywalking.config.Config;

import java.io.File;
import java.io.IOException;

/**
 * The manipulated class output. Write the dynamic classes to the `debugging` folder, when we need to do some debug and
 * recheck.
 */
@Slf4j
public enum InstrumentDebuggingClass {
    INSTANCE;

    private File debuggingClassesRootPath;

    public void log(DynamicType dynamicType) {
        if (!Config.Agent.IS_OPEN_DEBUGGING_CLASS) {
            return;
        }

        /**
         * try to do I/O things in synchronized way, to avoid unexpected situations.
         */
        synchronized (INSTANCE) {
            try {
                if (debuggingClassesRootPath == null) {
                    try {
                        debuggingClassesRootPath = new File(AgentPackagePath.getPath(), "/debugging");
                        if (!debuggingClassesRootPath.exists()) {
                            debuggingClassesRootPath.mkdir();
                        }
                    } catch (AgentPackageNotFoundException e) {
                        log.error("Can't find the root path for creating /debugging folder.", e);
                    }
                }

                try {
                    dynamicType.saveIn(debuggingClassesRootPath);
                } catch (IOException e) {
                    log.error("Can't save class {} to file.", dynamicType.getTypeDescription().getActualName(), e);
                }
            } catch (Throwable t) {
                log.error("Save debugging classes fail.", t);
            }
        }
    }
}

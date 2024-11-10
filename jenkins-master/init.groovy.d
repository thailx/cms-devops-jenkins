import jenkins.model.*
import hudson.slaves.*
import hudson.model.*

def jenkins = Jenkins.getInstance()

def nodejsSlave = new DumbSlave(
    "nodejs-slave",
    "NodeJS Slave",
    "/home/jenkins",
    "1",
    Node.Mode.NORMAL,
    "nodejs",
    new JNLPLauncher(),
    RetentionStrategy.INSTANCE,
    new LinkedList<>()
)
nodejsSlave.setSecret("thailx123!@#")
jenkins.addNode(nodejsSlave)

def javaSlave = new DumbSlave(
    "java-slave",
    "Java Slave",
    "/home/jenkins",
    "1",
    Node.Mode.NORMAL,
    "java",
    new JNLPLauncher(),
    RetentionStrategy.INSTANCE,
    new LinkedList<>()
)
javaSlave.setSecret("thailx123!@#")
jenkins.addNode(javaSlave)

jenkins.save()